module vraylib

// Input-related functions: mouse

pub const (
	mouse_left_button = 0
	mouse_right_button = 1
	mouse_middle_button = 2
)

[inline] pub fn is_mouse_button_pressed(button int) bool {
	return C.IsMouseButtonPressed(button)
}

[inline] pub fn is_mouse_button_down(button int) bool {
	return C.IsMouseButtonDown(button)
}

[inline] pub fn is_mouse_button_released(button int) bool {
	return C.IsMouseButtonReleased(button)
}

[inline] pub fn is_mouse_button_up(button int) bool {
	return C.IsMouseButtonUp(button)
}


[inline] pub fn get_mouse_x() int {
	return C.GetMouseX()
}

[inline] pub fn get_mouse_y() int {
	return C.GetMouseY()
}

[inline] pub fn get_mouse_position() Vector2 {
	return C.GetMousePosition()
}

[inline] pub fn set_mouse_position(x, y int) {
	C.SetMousePosition(x, y)
}

[inline] pub fn set_mouse_offset(offsetX, offsetY int) {
	C.SetMouseOffset(offsetX, offsetY)
}

[inline] pub fn set_mouse_scale(scaleX, scaleY f32) {
	C.SetMouseScale(scaleX, scaleY)
}

[inline] pub fn get_mouse_wheel_move() int {
	return C.GetMouseWheelMove()
}

