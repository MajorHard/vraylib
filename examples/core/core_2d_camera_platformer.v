module main

import waotzi.vraylib
import math.util

const (
	screen_width    = 800
	screen_height   = 450
	g               = 400
	player_jump_spd = 350
	player_hor_spd  = 200
)

const (
	update_camera_center               = 0
	update_camera_center_inside_map    = 1
	update_camera_center_smooth_follow = 2
	update_camera_even_out_on_landing  = 3
	update_camera_player_bounds_push   = 4
)

const camera_descriptions = [
	'Follow player center',
	'Follow player center, but clamp to map edges',
	'Follow player center; smoothed',
	'Follow player center horizontally; updateplayer center vertically after landing',
	'Player push camera on getting too close to screen edge',
]

struct Player {
mut:
	position C.Vector2
	speed    f32
	can_jump bool
}

struct EnvItem {
	rect     C.Rectangle
	blocking bool
	color    C.Color
}

fn main() {
	vraylib.init_window(screen_width, screen_height, 'vraylib [core] example - 2d camera')
	vraylib.set_target_fps(60)

	mut player := Player{
		position: C.Vector2{400, 280}
		speed: 0
		can_jump: false
	}
	mut env_items := []EnvItem{}
	env_items << EnvItem{C.Rectangle{0, 0, 1000, 400}, false, vraylib.lightgray}
	env_items << EnvItem{C.Rectangle{0, 400, 1000, 200}, true, vraylib.gray}
	env_items << EnvItem{C.Rectangle{300, 200, 400, 10}, true, vraylib.gray}
	env_items << EnvItem{C.Rectangle{250, 300, 100, 10}, true, vraylib.gray}
	env_items << EnvItem{C.Rectangle{650, 300, 100, 10}, true, vraylib.gray}

	mut camera := C.Camera2D{
		target: player.position
		offset: C.Vector2{
			x: screen_width / 2
			y: screen_height / 2
		}
		rotation: 0
		zoom: 1
	}

	mut camera_option := 0

	even_out_speed := 700
	mut evening_out := false
	mut even_out_target := f32(0)

	for {
		if vraylib.window_should_close() {
			break
		}

		delta_time := vraylib.get_frame_time()

		update_player(mut player, env_items, delta_time)

		camera.zoom += f32(vraylib.get_mouse_wheel_move()) * .05

		if camera.zoom > 3 {
			camera.zoom = 3
		} else if camera.zoom < 0.25 {
			camera.zoom = 0.25
		}

		if vraylib.is_key_pressed(vraylib.key_r) {
			camera.zoom = 1
			player.position = C.Vector2{400, 200}
		}
		if vraylib.is_key_pressed(vraylib.key_c) {
			camera_option = (camera_option + 1) % 5
		}
		match camera_option {
			update_camera_center {
				camera.offset = C.Vector2{screen_width / 2, screen_height / 2}
				camera.target = player.position
			}
			update_camera_center_inside_map {
				camera.target = player.position
				camera.offset = C.Vector2{screen_width / 2, screen_height / 2}
				mut min_x := f32(1000)
				mut min_y := f32(1000)
				mut max_x := f32(-1000)
				mut max_y := f32(-1000)

				for ei in env_items {
					min_x = util.fmin_32(ei.rect.x, min_x)
					max_x = util.fmax_32(ei.rect.x + ei.rect.width, max_x)
					min_y = util.fmin_32(ei.rect.y, min_y)
					max_y = util.fmax_32(ei.rect.y + ei.rect.height, max_y)
				}

				max := vraylib.get_world_to_screen_2d(C.Vector2{max_x, max_y}, camera)
				min := vraylib.get_world_to_screen_2d(C.Vector2{min_x, min_y}, camera)

				if max.x < screen_width {
					camera.offset.x = screen_width - (max.x - screen_width / 2)
				}
				if max.y < screen_height {
					camera.offset.y = screen_height - (max.y - screen_height / 2)
				}
				if min.x > 0 {
					camera.offset.x = screen_width / 2 - min.x
				}
				if min.y > 0 {
					camera.offset.y = screen_height / 2 - min.y
				}
			}
			update_camera_center_smooth_follow {
				min_speed := 30
				min_effect_length := 10
				fraction_speed := f32(0.8)

				camera.offset = C.Vector2{screen_width / 2, screen_height / 2}
				diff := vraylib.vector2_subtract(player.position, camera.target)
				length := vraylib.vector2_length(diff)

				if length > min_effect_length {
					speed := util.fmax_32(fraction_speed * length, min_speed)
					camera.target = vraylib.vector2_add(camera.target, vraylib.vector2_scale(diff,
						speed * delta_time / length))
				}
			}
			update_camera_even_out_on_landing {
				camera.offset = C.Vector2{screen_width / 2, screen_height / 2}
				camera.target.x = player.position.x

				if evening_out {
					if even_out_target > camera.target.y {
						camera.target.y += even_out_speed * delta_time
						if camera.target.y > even_out_target {
							camera.target.y = even_out_target
							evening_out = false
						}
					} else {
						camera.target.y -= even_out_speed * delta_time
						if camera.target.y < even_out_target {
							camera.target.y = even_out_target
							evening_out = false
						}
					}
				} else {
					if player.can_jump && (player.speed == 0)
						&& (player.position.y != camera.target.y) {
						evening_out = true
						even_out_target = player.position.y
					}
				}
			}
			update_camera_player_bounds_push {
				bbox := C.Vector2{0.2, 0.2}
				bbox_world_min := vraylib.get_screen_to_world_2d(C.Vector2{(1 - bbox.x) * .5 * screen_width, (1 - bbox.y) * .5 * screen_height},
					camera)
				bbox_world_max := vraylib.get_screen_to_world_2d(C.Vector2{(1 + bbox.x) * .5 * screen_width, (
					1 + bbox.y) * .5 * screen_height}, camera)
				camera.offset = C.Vector2{(1 - bbox.x) * .5 * screen_width, (1 - bbox.y) * .5 * screen_height}

				if player.position.x < bbox_world_min.x {
					camera.target.x = player.position.x
				}
				if player.position.y < bbox_world_min.y {
					camera.target.y = player.position.y
				}
				if player.position.x > bbox_world_max.x {
					camera.target.x = bbox_world_min.x + (player.position.x - bbox_world_max.x)
				}
				if player.position.y > bbox_world_max.y {
					camera.target.y = bbox_world_min.y + (player.position.x - bbox_world_max.y)
				}
			}
			else {}
		}
		{
			vraylib.begin_drawing()

			vraylib.clear_background(vraylib.raywhite)
			{
				vraylib.begin_mode_2d(camera)

				for item in env_items {
					vraylib.draw_rectangle_rec(item.rect, item.color)

					player_rect := C.Rectangle{player.position.x - 20, player.position.y - 40, 40, 40}
					vraylib.draw_rectangle_rec(player_rect, vraylib.red)
				}

				vraylib.end_mode_2d()
			}
			vraylib.draw_text('Controls:', 20, 20, 10, vraylib.black)
			vraylib.draw_text('- Right/Left to move', 40, 40, 10, vraylib.darkgray)
			vraylib.draw_text('- Space to jump', 40, 60, 10, vraylib.darkgray)
			vraylib.draw_text('- Mouse Wheel to Zoom in/out, R to reset zoom', 20, 80,
				10, vraylib.darkgray)
			vraylib.draw_text('- C to change camera mode', 20, 120, 10, vraylib.darkgray)
			vraylib.draw_text(camera_descriptions[camera_option], 40, 140, 10, vraylib.darkgray)
			vraylib.end_drawing()
		}
	}
	vraylib.close_window()
}

fn update_player(mut player Player, env_items []EnvItem, delta f32) {
	if vraylib.is_key_down(vraylib.key_left) {
		player.position.x -= player_hor_spd * delta
	}
	if vraylib.is_key_down(vraylib.key_right) {
		player.position.x += player_hor_spd * delta
	}
	if vraylib.is_key_down(vraylib.key_space) && player.can_jump {
		player.speed = -player_jump_spd
		player.can_jump = false
	}

	mut hit_obstacle := false
	for ei in env_items {
		mut p := player.position
		if ei.blocking && ei.rect.x <= p.x && ei.rect.x + ei.rect.width >= p.x && ei.rect.y >= p.y
			&& ei.rect.y < p.y + player.speed * delta {
			hit_obstacle = true
			player.speed = 0
			p.y = ei.rect.y
		}
	}

	if !hit_obstacle {
		player.position.y += player.speed * delta
		player.speed += g * delta
		player.can_jump = false
	} else {
		player.can_jump = true
	}
}
