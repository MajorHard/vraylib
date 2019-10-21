module vraylib

// Input-related functions: mouse

const (
	mouse_left_button = 0
	mouse_right_button = 1
	mouse_middle_button = 2
)

pub fn is_mouse_button_pressed(button int) bool {
	return C.IsMouseButtonPressed(button)
}

pub fn is_mouse_button_down(button int) bool {
	return C.IsMouseButtonDown(button)
}

pub fn is_mouse_button_released(button int) bool {
	return C.IsMouseButtonReleased(button)
}

pub fn is_mouse_button_up(button int) bool {
	return C.IsMouseButtonUp(button)
}


pub fn get_mouse_x() int {
	return C.GetMouseX()
}

pub fn get_mouse_y() int {
	return C.GetMouseY()
}

pub fn get_mouse_position() Vector2 {
	return C.GetMousePosition()
}

pub fn set_mouse_position(x, y int) {
	C.SetMousePosition(x, y)
}

pub fn set_mouse_offset(offsetX, offsetY int) {
	C.SetMouseOffset(offsetX, offsetY)
}

pub fn set_mouse_scale(scaleX, scaleY f32) {
	C.SetMouseScale(scaleX, scaleY)
}

pub fn get_mouse_wheel_move() int {
	return C.GetMouseWheelMove()
}

