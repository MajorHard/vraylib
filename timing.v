module vraylib

// Timing-related functions
//

fn C.SetTargetFPS(fps int)
fn C.GetFPS() int
fn C.GetFrameTime() f32
fn C.GetTime() f64

// Set target FPS (maximum)
pub fn set_target_fps(fps int) {
	C.SetTargetFPS(fps)
}

// Get current FPS
pub fn get_fps() int {
	return C.GetFPS()
}

// Returns time in seconds for last frame drawn
pub fn get_frame_time() f32 {
	return C.GetFrameTime()
}

// Returns elapsed time in seconds since InitWindow()
pub fn get_time() f64 {
	return C.GetTime()
}

