module vraylib

// Screen-space-related functions
// Returns a ray trace from mouse position
[inline]
pub fn get_mouse_ray(mousePosition Vector2, camera C.Camera) Ray {
	return C.GetMouseRay(mousePosition, camera)
}

// Returns the screen space position for a 3d world space position
[inline]
pub fn get_world_to_screen(position Vector3, camera C.Camera) Vector2 {
	return C.GetWorldToScreen(position, camera)
}

// Returns the screen space position for a 2d world space position
[inline]
pub fn get_world_to_screen2d(position C.Vector2, camera C.Camera2D) C.Vector2 {
	return C.GetWorldToScreen2D(position, camera)
}


// Returns camera transform matrix (view matrix)
[inline]
pub fn get_camera_matrix(camera C.Camera) Matrix {
	return C.GetCameraMatrix(camera)
}

// Misc. functions
[inline]
pub fn set_config_flags(flags u32) {
	C.SetConfigFlags(flags)
}

[inline]
pub fn trace_log(logType int, text string) {
	C.TraceLog(logType, text.str)
}

[inline]
pub fn take_screenshot(filename string) {
	C.TakeScreenshot(filename.str)
}

[inline]
pub fn get_random_value(min int, max int) int {
	return C.GetRandomValue(min, max)
}

// Files management functions
// Check if file exists
[inline]
pub fn file_exists(fileName string) bool {
	return C.FileExists(fileName.str)
}

// Check file extension
[inline]
pub fn is_file_extension(fileName string, ext string) bool {
	return C.IsFileExtension(fileName.str, ext.str)
}

// Get filename extension
[inline]
pub fn get_extension(fileName string) string {
	return byte(C.GetExtension(fileName.str)).str()
}

// Get filename
[inline]
pub fn get_file_name(fileName string) string {
	return byte(C.GetFileName(fileName.str)).str()
}

// Get full path of directory of filename
[inline]
pub fn get_directory_path(fileName string) string {
	return byte(C.GetDirectoryPath(fileName.str)).str()
}

// Get current working directory
[inline]
pub fn get_working_directory() string {
	return byte(C.GetWorkingDirectory()).str()
}

// Change working directory, returns true if success
[inline]
pub fn change_directory(dir string) bool {
	return C.ChangeDirectory(dir.str)
}

// Get file modification time (last write time)
[inline]
pub fn get_file_mod_time(fileName string) i64 {
	return C.GetFileModTime(fileName.str)
}
