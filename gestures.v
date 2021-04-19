module vraylib

pub const(
	gesture_none        = 0
	gesture_tap         = 1
	gesture_doubletap   = 2
	gesture_hold        = 4
	gesture_drag        = 8
	gesture_swipe_right = 16
	gesture_swipe_left  = 32
	gesture_swipe_up    = 64
	gesture_swipe_down  = 128
	gesture_pinch_in    = 256
	gesture_pinch_out   = 512
)

//------------------------------------------------------------------------------------
// Gestures and Touch Handling Functions (Module: gestures)
//------------------------------------------------------------------------------------
// Enable a set of gestures using flags
[inline]
pub fn set_gestures_enabled(gestureFlags u32) {
	C.SetGesturesEnabled(gestureFlags)
}

// Check if a gesture have been detected
[inline]
pub fn is_gesture_detected(gesture int) bool {
	return C.IsGestureDetected(gesture)
}

// Get latest detected gesture
[inline]
pub fn get_gesture_detected() int {
	return C.GetGestureDetected()
}

// Get touch points count
[inline]
pub fn get_touch_points_count() int {
	return C.GetTouchPointsCount()
}

// Get gesture hold time in milliseconds
[inline]
pub fn get_gesture_hold_duration() f32 {
	return C.GetGestureHoldDuration()
}

// Get gesture drag vector
[inline]
pub fn get_gesture_drag_vector() Vector2 {
	return C.GetGestureDragVector()
}

// Get gesture drag angle
[inline]
pub fn get_desture_drag_angle() f32 {
	return C.GetGestureDragAngle()
}

// Get gesture pinch delta
[inline]
pub fn get_gesture_pinch_vector() Vector2 {
	return C.GetGesturePinchVector()
}

// Get gesture pinch angle
[inline]
pub fn get_gesture_pinch_angle() f32 {
	return C.GetGesturePinchAngle()
}
