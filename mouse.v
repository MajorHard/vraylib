module vraylib

// Input-related functions: mouse
pub const (
	mouse_left_button   = 0
	mouse_right_button  = 1
	mouse_middle_button = 2
)

pub const (
	mouse_cursor_default       = 0
	mouse_cursor_arrow         = 1
	mouse_cursor_ibeam         = 2
	mouse_cursor_crosshair     = 3
	mouse_cursor_pointing_hand = 4
	mouse_cursor_hand          = 4
	mouse_cursor_resize_ew     = 5 // the horizontal resize/move arrow shape
	mouse_cursor_resize_ns     = 6 // the vertical resize/move arrow shape
	mouse_cursor_resize_nwse   = 7 // the top-left to bottom-right diagonal resize/move arrow shape
	mouse_cursor_resize_nesw   = 8 // the top-right to bottom-left diagonal resize/move arrow shape
	mouse_cursor_resize_all    = 9 // the omni-directional resize/move cursor shape
	mouse_cursor_not_allowed   = 10 // the operation-not-allowed shape
)

[inline]
pub fn is_mouse_button_pressed(button int) bool {
	return C.IsMouseButtonPressed(button)
}

[inline]
pub fn is_mouse_button_down(button int) bool {
	return C.IsMouseButtonDown(button)
}

[inline]
pub fn is_mouse_button_released(button int) bool {
	return C.IsMouseButtonReleased(button)
}

[inline]
pub fn is_mouse_button_up(button int) bool {
	return C.IsMouseButtonUp(button)
}

[inline]
pub fn get_mouse_x() int {
	return C.GetMouseX()
}

[inline]
pub fn get_mouse_y() int {
	return C.GetMouseY()
}

[inline]
pub fn get_mouse_position() Vector2 {
	return C.GetMousePosition()
}

[inline]
pub fn set_mouse_position(x int, y int) {
	C.SetMousePosition(x, y)
}

[inline]
pub fn set_mouse_offset(offsetX int, offsetY int) {
	C.SetMouseOffset(offsetX, offsetY)
}

[inline]
pub fn set_mouse_scale(scaleX f32, scaleY f32) {
	C.SetMouseScale(scaleX, scaleY)
}

[inline]
pub fn set_mouse_cursor(cursor int) {
	C.SetMouseCursor(cursor)
}

[inline]
pub fn get_mouse_wheel_move() f32 {
	return C.GetMouseWheelMove()
}
