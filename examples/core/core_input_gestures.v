module main

import waotzi.vraylib

const (
	screen_width        = 800
	screen_height       = 450
	max_gesture_strings = 20
)

fn main() {
	vraylib.init_window(screen_width, screen_height, 'vraylib [core] example - input gestures')

	mut touch_position := C.Vector2{}
	touch_area := C.Rectangle{220, 10, screen_width - 230, screen_height - 20}

	mut gestures_count := 0
	mut gesture_strings := []string{}

	mut current_gesture := vraylib.gesture_none
	mut last_gesture := vraylib.gesture_none

	vraylib.set_target_fps(60)

	for {
		if vraylib.window_should_close() {
			break
		}

		last_gesture = current_gesture
		current_gesture = vraylib.get_gesture_detected()
		touch_position = vraylib.get_touch_position(0)

		if vraylib.check_collision_point_rec(touch_position, touch_area)
			&& current_gesture != vraylib.gesture_none {
			if current_gesture != last_gesture {
				match current_gesture {
					vraylib.gesture_tap {
						gesture_strings << 'GESTURE TAP'
					}
					vraylib.gesture_doubletap {
						gesture_strings << 'GESTURE DOUBLETAP'
					}
					vraylib.gesture_hold {
						gesture_strings << 'GESTURE HOLD'
					}
					vraylib.gesture_drag {
						gesture_strings << 'GESTUR DRAG'
					}
					vraylib.gesture_swipe_right {
						gesture_strings << 'GESTURE SWIPE RIGHT'
					}
					vraylib.gesture_swipe_left {
						gesture_strings << 'GESTURE SWIPE LEFT'
					}
					vraylib.gesture_swipe_up {
						gesture_strings << 'GESTURE SWIPE UP'
					}
					vraylib.gesture_swipe_down {
						gesture_strings << 'GESTURE SWIPE DOWN'
					}
					vraylib.gesture_pinch_in {
						gesture_strings << 'GESTURE PINCH IN'
					}
					vraylib.gesture_pinch_out {
						gesture_strings << 'GESTURE PINCH OUT'
					}
					else {}
				}
				gestures_count++

				if gestures_count >= max_gesture_strings {
					for i := 0; i < max_gesture_strings; i++ {
						gesture_strings = []string{}

						gestures_count = 0
					}
				}
			}
		}

		{
			vraylib.begin_drawing()
			vraylib.clear_background(vraylib.raywhite)
			vraylib.draw_rectangle_rec(touch_area, vraylib.gray)
			vraylib.draw_rectangle(225, 15, screen_width - 240, screen_height - 30, vraylib.white)

			vraylib.draw_text('GESTURES TEST AREA', screen_width - 270, screen_height - 40,
				20, vraylib.fade(vraylib.gray, .5))

			for i := 0; i < gestures_count; i++ {
				if i % 2 == 0 {
					vraylib.draw_rectangle(10, 30 + 20 * i, 200, 20, vraylib.fade(vraylib.gray,
						.5))
				} else {
					vraylib.draw_rectangle(10, 30 + 20 * i, 200, 20, vraylib.fade(vraylib.gray,
						.3))
				}
				if i < gestures_count - 1 {
					vraylib.draw_text(gesture_strings[i], 35, 36 + 20 * i, 10, vraylib.darkgray)
				} else {
					vraylib.draw_text(gesture_strings[i], 35, 36 + 20 * i, 10, vraylib.maroon)
				}
			}
			vraylib.end_drawing()
		}
	}
	vraylib.close_window()
}
