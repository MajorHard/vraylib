module main

import MajorHard.vraylib

const (
	screenWidth = 800
	screenHeight = 450
)


fn main() {
	vraylib.init_window(screenWidth, screenHeight, "vraylib [core] example - mouse mouse wheel")
	defer { vraylib.close_window() }

	mut box_position_y := screenHeight / 2 - 40
	scroll_speed := 4

	vraylib.set_target_fps(60)

	for {
		if vraylib.window_should_close() {
			break
		}
		box_position_y -= vraylib.get_mouse_wheel_move() * scroll_speed


		{
			vraylib.begin_drawing()
			defer {  vraylib.end_drawing() }

			vraylib.clear_background(vraylib.raywhite)
			vraylib.draw_rectangle(screenWidth / 2 - 40, box_position_y, 80, 80, vraylib.maroon)

			vraylib.draw_text("Use mouse wheel to move cube up and down!", 10, 40, 20, vraylib.gray)
		}
	}

}
