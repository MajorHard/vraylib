module main

import waotzi.vraylib

const (
	screen_width  = 800
	screen_height = 450
)

fn main() {
	vraylib.init_window(screen_width, screen_height, 'vraylib [core] example - mouse mouse wheel')

	mut box_position_y := screen_height / 2 - 40
	scroll_speed := 4

	vraylib.set_target_fps(60)

	for {
		if vraylib.window_should_close() {
			break
		}
		box_position_y -= vraylib.get_mouse_wheel_move() * int(scroll_speed)

		{
			vraylib.begin_drawing()
			vraylib.clear_background(vraylib.raywhite)
			vraylib.draw_rectangle(screen_width / 2 - 40, box_position_y, 80, 80, vraylib.maroon)

			vraylib.draw_text('Use mouse wheel to move cube up and down!', 10, 10, 20,
				vraylib.gray)
			vraylib.draw_text('Box position Y: $box_position_y', 10, 40, 20, vraylib.lightgray)
			vraylib.end_drawing()
		}
	}
	vraylib.close_window()
}
