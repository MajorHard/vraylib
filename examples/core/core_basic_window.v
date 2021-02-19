module main

import MajorHard.vraylib

const (
	screen_width = 800
	screen_height = 450
)


fn main() {
	vraylib.init_window(screen_width, screen_height, "vraylib [core] example - basic window")
	defer { vraylib.close_window() }
	vraylib.set_target_fps(60)

	for {
		if vraylib.window_should_close() {
			break
		}
		{
			vraylib.begin_drawing()
			defer {  vraylib.end_drawing() }

			vraylib.clear_background(vraylib.raywhite)
			vraylib.draw_text("Congrats! You created your first window!", 190, 200, 20, vraylib.lightgray)
		}
	}

}
