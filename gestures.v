module vraylib

//------------------------------------------------------------------------------------
// Gestures and Touch Handling Functions (Module: gestures)
//------------------------------------------------------------------------------------

// Enable a set of gestures using flags
pub fn set_gestures_enabled(gestureFlags u32) {
	C.SetGesturesEnabled(gestureFlags)
}

// Check if a gesture have been detected
pub fn is_gesture_detected(gesture int) bool {
	return C.IsGestureDetected(gesture)
}

// Get latest detected gesture
pub fn get_gesture_detected() int {
	return C.GetGestureDetected()
}

// Get touch points count
pub fn get_touch_points_count() int {
	return C.GetTouchPointsCount()
}

// Get gesture hold time in milliseconds
pub fn get_gesture_hold_duration() f32 {
	return C.GetGestureHoldDuration()
}
// Get gesture drag vector
pub fn get_gesture_drag_vector() Vector2 {
	return C.GetGestureDragVector()
}

// Get gesture drag angle
pub fn get_desture_drag_angle() f32 {
	return C.GetGestureDragAngle()
}

// Get gesture pinch delta
pub fn get_gesture_pinch_vector() Vector2 {
	return C.GetGesturePinchVector()
}

// Get gesture pinch angle
pub fn get_gesture_pinch_angle() f32 {
	return C.GetGesturePinchAngle()
}

