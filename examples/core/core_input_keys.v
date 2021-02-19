module main

import MajorHard.vraylib

const (
	screen_width = 800
	screen_height = 450
)


fn main() {
	vraylib.init_window(screen_width, screen_height, "vraylib [core] example - keyboard input")
	defer { vraylib.close_window() }

	mut ball_position := Vector2{ x: screen_width / 2, y: screen_height / 2 }

	vraylib.set_target_fps(60)

	for {
		if vraylib.window_should_close() {
			break
		}
		if (vraylib.is_key_down(vraylib.key_right)) {
			ball_position.x += 2
		}
		if (vraylib.is_key_down(vraylib.key_left)) {
			ball_position.x -= 2
		}
		if (vraylib.is_key_down(vraylib.key_up)) {
			ball_position.y -= 2
		}
		if (vraylib.is_key_down(vraylib.key_down)) {
			ball_position.y += 2
		}
		{
			vraylib.begin_drawing()
			defer {  vraylib.end_drawing() }

			vraylib.clear_background(vraylib.raywhite)
			vraylib.draw_text("move the ball with arrow keys", 10, 10, 20, vraylib.darkgray)
			vraylib.draw_circle_v(ball_position, 50, vraylib.maroon)
		}
	}

}
