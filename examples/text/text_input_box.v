module main

import waotzi.vraylib

const (
	screen_width    = 800
	screen_height   = 450
	max_input_chars = 9
)

fn main() {
	vraylib.init_window(screen_width, screen_height, 'vraylib [core] example - basic window')
	vraylib.set_target_fps(60)

	mut name := []char{len: 1, init: char(` `)}
	mut letter_count := 0

	text_box := C.Rectangle{screen_width * .5 - 100, 180, 225, 50}
	mut mouse_on_text := false

	mut frames_counter := 0

	for {
		if vraylib.window_should_close() {
			break
		}
		{
			if vraylib.check_collision_point_rec(vraylib.get_mouse_position(), text_box) {
				mouse_on_text = true
			} else {
				mouse_on_text = false
			}
			if mouse_on_text {
				// set the window's cursor to the i-beam
				vraylib.set_mouse_cursor(vraylib.mouse_cursor_ibeam)
				// get char pressed (unicode character) on the queue
				mut key := vraylib.get_char_pressed()

				// check if more characters have been pressed on the same frame
				for key > 0 {
					// note: only allow keys in range [32..125]
					if (key >= 32) && (key <= 125) && (letter_count < max_input_chars) {
						name << char(key)
						letter_count++
					}

					key = vraylib.get_char_pressed() // check next character in the queue
				}

				if vraylib.is_key_pressed(vraylib.key_backspace) && letter_count > 0 {
					name.delete_last()
					letter_count--
				}
			} else {
				vraylib.set_mouse_cursor(vraylib.mouse_cursor_default)
			}

			if mouse_on_text {
				frames_counter++
			} else {
				frames_counter = 0
			}

			name_text := name[0].vstring().substr(0, letter_count + 1)

			vraylib.begin_drawing()
			vraylib.clear_background(vraylib.raywhite)
			vraylib.draw_text('PLACE MOUSE OVER INPUT BOX!', 240, 140, 20, vraylib.lightgray)
			vraylib.draw_rectangle_rec(text_box, vraylib.white)
			if mouse_on_text {
				vraylib.draw_rectangle_lines(int(text_box.x), int(text_box.y), int(text_box.width),
					int(text_box.height), vraylib.red)
			} else {
				vraylib.draw_rectangle_lines(int(text_box.x), int(text_box.y), int(text_box.width),
					int(text_box.height), vraylib.orange)
			}

			vraylib.draw_text(name_text, int(text_box.x + 5), int(text_box.y + 8), 40,
				vraylib.maroon)

			if letter_count < max_input_chars {
				// draw blinking underscore char
				if (frames_counter / 20) % 2 == 0 {
					vraylib.draw_text('_', int(text_box.x + 8 + vraylib.measure_text(name_text, 40)),
						int(text_box.y + 12), 40, vraylib.maroon)
				}
			}

			vraylib.end_drawing()
		}
	}

	vraylib.close_window()
}
