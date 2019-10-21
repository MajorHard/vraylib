module vraylib

// Screen-space-related functions
//

// Returns a ray trace from mouse position
pub fn get_mouse_ray(mousePosition Vector2, camera Camera3D) Ray {
	return C.GetMouseRay(mousePosition, camera)
}
// Returns the screen space position for a 3d world space position
pub fn get_world_to_screen(position Vector3, camera Camera3D) Vector2 {
	return C.GetWorldToScreen(position, camera)
}
// Returns camera transform matrix (view matrix)
pub fn get_camera_matrix(camera Camera3D) Matrix {
	return C.GetCameraMatrix(camera)
}


// Misc. functions
pub fn set_config_flags(flags u32) {
	C.SetConfigFlags(flags)
}

pub fn set_trace_log_level(logType int) {
	C.SetTraceLogLevel(logType)
}

pub fn set_trace_log_exit(logType int) {
	C.SetTraceLogExit(logType)
}

pub fn trace_log(logType int, text string) {
	C.TraceLog(logType, text.str)
}

pub fn take_screenshot(filename string) {
	C.TakeScreenshot(filename.str)
}

pub fn get_random_value(min, max int) int {
	return C.GetRandomValue(min, max)
}

// Files management functions

// Check if file exists
pub fn file_exists(fileName string) bool {
	return C.FileExists(fileName.str)
}

// Check file extension
pub fn is_file_extension(fileName string, ext string) bool {
	return C.IsFileExtension(fileName.str, ext.str)
}

// Get filename extension
pub fn get_extension(fileName string) string {
	return string(byteptr(C.GetExtension(fileName.str)))
}

// Get filename
pub fn get_file_name(fileName string) string {
	return string(byteptr(C.GetFileName(fileName.str)))
}

// Get full path of directory of filename
pub fn get_directory_path(fileName string) string {
	return string(byteptr(C.GetDirectoryPath(fileName.str)))
}

// Get current working directory
pub fn get_working_directory() string {
	return string(byteptr(C.GetWorkingDirectory()))
}

// Change working directory, returns true if success
pub fn change_directory(dir string) bool {
	return C.ChangeDirectory(dir.str)
}

// Get file modification time (last write time)
pub fn get_file_mod_time(fileName string) i64 {
	return C.GetFileModTime(fileName.str)
}


