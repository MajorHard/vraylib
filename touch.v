module vraylib

// Input-related functions: touch

fn C.GetTouchX() int
fn C.GetTouchY() int
fn C.GetTouchPosition(index int) C.Vector2

// Returns touch position X for touch point 0 (relative to screen size)
pub fn get_touch_x() int {
	return C.GetTouchX()
}

// Returns touch position Y for touch point 0 (relative to screen size)
pub fn get_touch_y() int {
	return C.GetTouchY()
}

// Returns touch position XY for a touch point index (relative to screen size)
pub fn get_touch_position(index int) Vector2 {
	return C.GetTouchPosition(index)
}

