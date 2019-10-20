module main

import MajorHard.vraylib

const (
	screenWidth = 800
	screenHeight = 450
)


fn main() {
	vraylib.init_window(screenWidth, screenHeight, "vraylib [core] example - keyboard input")
	defer { vraylib.close_window() }

	mut ball_position := Vector2{ x: screenWidth / 2, y: screenHeight / 2 }

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
			C.DrawCircleV(ball_position, 50, vraylib.maroon)
		}
	}

}
