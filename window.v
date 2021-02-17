module vraylib

// Window-Related Functions
// Initialize window and OpenGL context
[inline]
pub fn init_window(w int, h int, title string) {
	C.InitWindow(w, h, title.str)
}

// Check if KEY_ESCAPE pressed or Close icon pressed
[inline]
pub fn window_should_close() bool {
	return C.WindowShouldClose()
}

// Close window and unload OpenGL context
[inline]
pub fn close_window() {
	C.CloseWindow()
}

// Check if window has been initialized successfully
[inline]
pub fn is_window_ready() bool {
	return C.IsWindowReady()
}

// Check if window has been minimized (or lost focus)
[inline]
pub fn is_window_minimized() bool {
	return C.IsWindowMinimized()
}

// Check if window has been resized
[inline]
pub fn is_window_resized() bool {
	return C.IsWindowResized()
}

// Check if window is currently hidden
[inline]
pub fn is_window_hidden() bool {
	return C.IsWindowHidden()
}

// Toggle fullscreen mode (only PLATFORM_DESKTOP)
[inline]
pub fn toggle_fullscreen() {
	C.ToggleFullscreen()
}

// Set icon for window (only PLATFORM_DESKTOP)
[inline]
pub fn set_window_icon(image Image) {
	C.SetWindowIcon(image)
}

// Set title for window (only PLATFORM_DESKTOP)
[inline]
pub fn set_window_title(title string) {
	C.SetWindowTitle(title.str)
}

// Set window position on screen (only PLATFORM_DESKTOP)
[inline]
pub fn set_window_position(x int, y int) {
	C.SetWindowPosition(x, y)
}

// Set monitor for the current window (fullscreen mode)
[inline]
pub fn set_window_monitor(monitor int) {
	C.SetWindowMonitor(monitor)
}

// Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)
[inline]
pub fn set_window_min_size(width int, height int) {
	C.SetWindowMinSize(width, height)
}

// Set window dimensions
[inline]
pub fn set_window_size(width int, height int) {
	C.SetWindowSize(width, height)
}

// Get native window handle
[inline]
pub fn get_window_hanlde() voidptr {
	return C.GetWindowHandle()
}

// Get current screen width
[inline]
pub fn get_screen_width() int {
	return C.GetScreenWidth()
}

// Get current screen height
[inline]
pub fn get_screen_height() int {
	return C.GetScreenHeight()
}

// Get number of connected monitors
[inline]
pub fn get_monitor_count() int {
	return C.GetMonitorCount()
}

// Get primary monitor width
[inline]
pub fn get_monitor_width(monitor int) int {
	return C.GetMonitorWidth(monitor)
}

// Get primary monitor height
[inline]
pub fn get_monitor_height(monitor int) int {
	return C.GetMonitorHeight(monitor)
}

// Get primary monitor physical width in millimetres
[inline]
pub fn get_monitor_physical_width(monitor int) int {
	return C.GetMonitorPhysicalWidth(monitor)
}

// Get primary monitor physical height in millimetres
[inline]
pub fn get_monitor_physical_height(monitor int) int {
	return C.GetMonitorPhysicalHeight(monitor)
}

// Get the human-readable, UTF-8 encoded name of the primary monitor
[inline]
pub fn get_monitor_name(monitor int) string {
	return byteptr(C.GetMonitorName(monitor)).str()
}

// Get clipboard text content
[inline]
pub fn get_clipboard_text() string {
	return byteptr(C.GetClipboardText()).str()
}

// Set clipboard text content
[inline]
pub fn set_clipboard_text(text string) {
	C.SetClipboardText(text.str)
}
