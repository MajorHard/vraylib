module main

import waotzi.vraylib

const (
	screen_width  = 800
	screen_height = 450
	max_touch_points =  10
)

fn main() {
	vraylib.init_window(screen_width, screen_height, 'vraylib [core] example - mouse input')

	mut ball_position := C.Vector2{
		x: -100
		y: -100
	}
	mut ball_color := vraylib.beige

	mut touch_counter := 0
	mut touch_position := C.Vector2{}

	vraylib.set_target_fps(60)

	for {
		if vraylib.window_should_close() {
			break
		}

		ball_position = vraylib.get_mouse_position()
		ball_color = vraylib.beige

		if vraylib.is_mouse_button_down(vraylib.mouse_left_button) {
			ball_color = vraylib.maroon
		}
		if vraylib.is_mouse_button_down(vraylib.mouse_middle_button) {
			ball_color = vraylib.lime
		}
		if vraylib.is_mouse_button_down(vraylib.mouse_right_button) {
			ball_color = vraylib.darkblue
		}

		if vraylib.is_mouse_button_pressed(vraylib.mouse_left_button) {
			touch_counter = 10
		}
		if vraylib.is_mouse_button_pressed(vraylib.mouse_middle_button) {
			touch_counter = 10
		}
		if vraylib.is_mouse_button_pressed(vraylib.mouse_right_button) {
			touch_counter = 10
		}


		if touch_counter > 0 { touch_counter-- }

		{
			vraylib.begin_drawing()
			vraylib.clear_background(vraylib.raywhite)
			for i := 0; i < max_touch_points; i++ {
				touch_position = vraylib.get_touch_position(i)
				if touch_position.x >= 0 && touch_position.y >= 0 {
					vraylib.draw_circle_v(touch_position, 34, vraylib.orange)
					vraylib.draw_text(i.str(), int(touch_position.x - 10), int(touch_position.y - 70), 40, vraylib.black)
				}
			}
			vraylib.draw_circle_v(ball_position, 30 + touch_counter * 3, ball_color)
			vraylib.draw_text('move ball with mouse and click mouse button to change color',
				10, 10, 20, vraylib.darkgray)
			vraylib.draw_text('touch the screen at multiple locations to get multiple balls', 10, 30, 20, vraylib.darkgray)
			vraylib.end_drawing()
		}
	}
	vraylib.close_window()
}
