module main

import raylib

const (
	screenWidth = 800
	screenHeight = 450
)


fn main() {
	raylib.init_window(screenWidth, screenHeight, "raylib [core] example - basic window")
	defer { raylib.close_window() }
	raylib.set_target_fps(60)

	for {
		if raylib.window_should_close() {
			break
		}
		{
			raylib.begin_drawing()
			defer {  raylib.end_drawing() }

			raylib.clear_background(raylib.raywhite)
			raylib.draw_text("Congrats! You created your first window!", 190, 200, 20, raylib.lightgray)
		}
	}

}
