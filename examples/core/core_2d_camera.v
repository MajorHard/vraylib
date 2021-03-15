module main

import MajorHard.vraylib
import rand

const (
	screen_width = 800
	screen_height = 450
	max_buildings = 100
)


fn main() {
	vraylib.init_window(screen_width, screen_height, "vraylib [core] example - 2d camera")
	defer { vraylib.close_window() }
	vraylib.set_target_fps(60)

	mut player := Rectangle{ x: 400, y: 280, width: 40, height: 40 }
	mut buildings := []Rectangle
	mut building_colors := []Color

	mut spacing := 0


	for i := 0; i < max_buildings; i++ {
		width := rand.int_in_range(50, 200)
		height := rand.int_in_range(100, 800)
		buildings << Rectangle{
			x: -6000 + spacing,
			y: screen_height - 130 - height,
			width: width,
			height: height
		}
		building_colors << Color{
			r: rand.int_in_range(200, 240),
			g: rand.int_in_range(200, 240),
			b: rand.int_in_range(200, 250),
			a: 255
		}
		spacing += width
	}
	mut camera := Camera2D{
		target: Vector2{ x: player.x + 20, y: player.y + 20 },
		offset: Vector2{ x: screen_width / 2, y: screen_height / 2 },
		rotation: 0,
		zoom: 1
	}


	for {
		if vraylib.window_should_close() {
			break
		}

		if vraylib.is_key_down(vraylib.key_right) {
			player.x += 2
		}
		else if vraylib.is_key_down(vraylib.key_left) {
			player.x -= 2
		}

		camera.target = Vector2{ x: player.x + 20, y: player.y + 20 }

		if vraylib.is_key_down(vraylib.key_a) {
			camera.rotation--
		}
		else if vraylib.is_key_down(vraylib.key_s) {
			camera.rotation++
		}

		camera.zoom += f32(vraylib.get_mouse_wheel_move()) * 0.05

		if camera.zoom > 3 { camera.zoom = 3 }
		if camera.zoom < 0.1 { camera.zoom = 0.1 }

		if vraylib.is_key_pressed(vraylib.key_r) {
			camera.zoom = 1
			camera.rotation = 0
		}


		{
			vraylib.begin_drawing()
			defer {  vraylib.end_drawing() }

			vraylib.clear_background(vraylib.raywhite)
			{
				vraylib.begin_mode_2d(camera)
				defer { vraylib.end_mode_2d() }

				for i := 0; i  < maxBuildings; i++ {
					vraylib.draw_rectangle_rec(buildings[i], building_colors[i])
					i++
				}
				vraylib.draw_rectangle(-6000, 320, 13000, 8000, vraylib.darkgray)
				vraylib.draw_rectangle_rec(player, vraylib.red)
				vraylib.draw_line(int(camera.target.x), -screen_height*10, int(camera.target.x), screen_height*10, vraylib.green)
				vraylib.draw_line(-screen_width*10, int(camera.target.y), screen_width*10, int(camera.target.y), vraylib.green)
			}

			vraylib.draw_text("SCREEN AREA", 640, 10, 20, vraylib.red)
			vraylib.draw_rectangle(0, 0, screen_width, 5, vraylib.red)
			vraylib.draw_rectangle(0, 5, 5, screen_height - 10, vraylib.red)
			vraylib.draw_rectangle(screen_width -5, 5, 5, screen_height - 10, vraylib.red)
			vraylib.draw_rectangle(0, screen_height - 5, screen_width, 5, vraylib.red)

			vraylib.draw_rectangle(10, 10, 250, 113, vraylib.fade(vraylib.skyblue, 0.5))
			vraylib.draw_rectangle_lines(10, 10, 250, 113, vraylib.blue)

			vraylib.draw_text("Free 2D camera controls:", 20, 20, 10, vraylib.black)
			vraylib.draw_text("- Right/Left to move Offset", 40, 40, 10, vraylib.darkgray)
			vraylib.draw_text("- Mouse Wheel to Zoom in/out", 20, 60, 10, vraylib.darkgray)
			vraylib.draw_text("- A / S to Rotate", 20, 80, 10, vraylib.darkgray)
			vraylib.draw_text("- R to reset Zoom and Rotation", 40, 100, 10, vraylib.darkgray)
		}
	}
}
