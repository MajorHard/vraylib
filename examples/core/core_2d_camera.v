module main

import MajorHard.vraylib

const (
	screenWidth = 800
	screenHeight = 450
	maxBuildings = 100
)


fn main() {
	vraylib.init_window(screenWidth, screenHeight, "vraylib [core] example - 2d camera")
	defer { vraylib.close_window() }
	vraylib.set_target_fps(60)

	mut player := Rectangle{ x: 400, y: 280, width: 40, height: 40 }
	mut buildings := []Rectangle
	mut building_colors := []Color

	mut spacing := 0


	mut i := 0
	for i < maxBuildings {
		width := C.GetRandomValue(50, 200)
		height := C.GetRandomValue(100, 800)
		buildings << Rectangle{
			x: -6000 + spacing,
			y: screenHeight - 130 - height,
			width: width,
			height: height
		}
		building_colors << Color{
			r: C.GetRandomValue(200, 240),
			g: C.GetRandomValue(200, 240),
			b: C.GetRandomValue(200, 250),
			a: 255
		}
		spacing += width
		i++
	}
	mut camera := Camera2D{
		target: Vector2{ x: player.x + 20, y: player.y + 20 },
		offset: Vector2{ x: screenWidth / 2, y: screenHeight / 2 },
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
			C.BeginMode2D(camera)
				i = 0
				for i  < maxBuildings {
					vraylib.draw_rectangle_rec(buildings[i], building_colors[i])
					i++
				}
				vraylib.draw_rectangle(-6000, 320, 13000, 8000, vraylib.darkgray)
				vraylib.draw_rectangle_rec(player, vraylib.red)
				vraylib.draw_line(int(camera.target.x), -screenHeight*10, int(camera.target.x), screenHeight*10, vraylib.green)
				vraylib.draw_line(-screenWidth*10, int(camera.target.y), screenWidth*10, int(camera.target.y), vraylib.green)
			C.EndMode2D()

			vraylib.draw_text("SCREEN AREA", 640, 10, 20, vraylib.red)
			vraylib.draw_rectangle(0, 0, screenWidth, 5, vraylib.red)
			vraylib.draw_rectangle(0, 5, 5, screenHeight - 10, vraylib.red)
			vraylib.draw_rectangle(screenWidth -5, 5, 5, screenHeight - 10, vraylib.red)
			vraylib.draw_rectangle(0, screenHeight - 5, screenWidth, 5, vraylib.red)

			vraylib.draw_rectangle_lines(10, 10, 250, 133, vraylib.blue)


			vraylib.draw_text("Free 2D camera controls:", 20, 20, 10, vraylib.black)
		}
	}

}
