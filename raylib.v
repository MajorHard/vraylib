module vraylib
#flag linux -lraylib -lGL -lm -lpthread -ldl -lrt -lX11
#include "raylib.h"

struct C.Vector2 {
pub mut:
	x f32
	y f32
}

struct C.Vector3 {
pub mut:
	x f32
	y f32
	z f32

}

struct C.Vector4 {
pub mut:
	x f32
	y f32
	z f32
	w f32
}

type Quaternion C.Vector4

struct C.Matrix {
pub mut:
	m0 f32
	m1 f32
	m2 f32
	m3 f32
	m4 f32
	m5 f32
	m6 f32
	m7 f32
	m8 f32
	m9 f32
	m10 f32
	m11 f32
	m12 f32
	m13 f32
	m14 f32
	m15 f32
}


struct C.Image {
pub mut:
	data voidptr
	width int
	height int
	mipmaps int
	format int
}

struct C.Rectangle {
pub mut:
	x f32
	y f32
	width f32
	height f32

}

struct C.Texture2D {
pub mut:
	id u32
	width int
	height int
	mipmaps int
	format int
}
type Texture Texture2D
type TextureCubemap Texture2D

struct C.RenderTexture2D {
	id u32
	texture Texture2D
	depth Texture2D
	depthTexture bool
}

struct C.Color {
pub mut:
	r byte
	g byte
	b byte
	a byte
}

struct C.CharInfo {
pub mut:
	value int
	offsetX int
	offsetY int
	advanceX int
	image Image
}

struct C.Font {
pub mut:
	baseSize int
	charsCount int
	texture Texture2D
	recs &Rectangle
	chars &CharInfo
}

struct C.Camera2D {
pub mut:
    offset    Vector2
    target    Vector2
    rotation  f32
    zoom      f32
}

struct C.Camera3D {
pub:
mut:
  position C.Vector3
  target C.Vector3
  up  C.Vector3
  fovy f32
  @type int
}


// Ray type (useful for raycast)
struct C.Ray {
    position Vector3
    direction Vector3
}
type Ray C.Ray

struct C.RayHitInfo {
    hit bool
    distance f32
    position Vector3
    normal Vector3
}
type RayHitInto C.RayHitInfo

struct C.BoundingBox {
    min Vector3
    max Vector3
}
type BoundingBox C.BoundingBox


// Color Constants
const (
	lightgray  = Color{ r: 200, g: 200, b: 200, a: 255 }
    gray       = Color{ r: 130, g: 130, b: 130, a: 255 }
    darkgray   = Color{ r: 80,  g: 80,  b: 80,  a: 255 }
    yellow     = Color{ r: 253, g: 249, b: 0,   a: 255 }
    gold       = Color{ r: 255, g: 203, b: 0,   a: 255 }
    orange     = Color{ r: 255, g: 161, b: 0,   a: 255 }
    pink       = Color{ r: 255, g: 109, b: 194, a: 255 }
    red        = Color{ r: 230, g: 41,  b: 55,  a: 255 }
    maroon     = Color{ r: 190, g: 33,  b: 55,  a: 255 }
    green      = Color{ r: 0,   g: 228, b: 48,  a: 255 }
    lime       = Color{ r: 0,   g: 158, b: 47,  a: 255 }
    darkgreen  = Color{ r: 0,   g: 117, b: 44,  a: 255 }
    skyblue    = Color{ r: 102, g: 191, b: 255, a: 255 }
    blue       = Color{ r: 0,   g: 121, b: 241, a: 255 }
    darkblue   = Color{ r: 0,   g: 82,  b: 172, a: 255 }
    purple     = Color{ r: 200, g: 122, b: 255, a: 255 }
    violet     = Color{ r: 135, g: 60,  b: 190, a: 255 }
    darkpurple = Color{ r: 112, g: 31,  b: 126, a: 255 }
    beige      = Color{ r: 211, g: 176, b: 131, a: 255 }
    brown      = Color{ r: 127, g: 106, b: 79,  a: 255 }
    darkbrown  = Color{ r: 76,  g: 63,  b: 47,  a: 255 }

    white      = Color{ r: 255, g: 255, b: 255, a: 255 }
    black      = Color{ r: 0,   g: 0,   b: 0,   a: 255 }
    blank      = Color{ r: 0,   g: 0,   b: 0,   a: 0   }
    magenta    = Color{ r: 255, g: 0,   b: 255, a: 255 }
    raywhite   = Color{ r: 245, g: 245, b: 245, a: 255 }
)

// Key Constants
const(
    key_apostrophe      = 39
    key_comma           = 44
    key_minus           = 45
    key_period          = 46
    key_slash           = 47
    key_zero            = 48
    key_one             = 49
    key_two             = 50
    key_three           = 51
    key_four            = 52
    key_five            = 53
    key_six             = 54
    key_seven           = 55
    key_eight           = 56
    key_nine            = 57
    key_semicolon       = 59
    key_equal           = 61
    key_a               = 65
    key_b               = 66
    key_c               = 67
    key_d               = 68
    key_e               = 69
    key_f               = 70
    key_g               = 71
    key_h               = 72
    key_i               = 73
    key_j               = 74
    key_k               = 75
    key_l               = 76
    key_m               = 77
    key_n               = 78
    key_o               = 79
    key_p               = 80
    key_q               = 81
    key_r               = 82
    key_s               = 83
    key_t               = 84
    key_u               = 85
    key_v               = 86
    key_w               = 87
    key_x               = 88
    key_y               = 89
    key_z               = 90

    // Function keys
    key_space           = 32
    key_escape          = 256
    key_enter           = 257
    key_tab             = 258
    key_backspace       = 259
    key_insert          = 260
    key_delete          = 261
    key_right           = 262
    key_left            = 263
    key_down            = 264
    key_up              = 265
    key_page_up         = 266
    key_page_down       = 267
    key_home            = 268
    key_end             = 269
    key_caps_lock       = 280
    key_scroll_lock     = 281
    key_num_lock        = 282
    key_print_screen    = 283
    key_pause           = 284
    key_f1              = 290
    key_f2              = 291
    key_f3              = 292
    key_f4              = 293
    key_f5              = 294
    key_f6              = 295
    key_f7              = 296
    key_f8              = 297
    key_f9              = 298
    key_f10             = 299
    key_f11             = 300
    key_f12             = 301
    key_left_shift      = 340
    key_left_control    = 341
    key_left_alt        = 342
    key_left_super      = 343
    key_right_shift     = 344
    key_right_control   = 345
    key_right_alt       = 346
    key_right_super     = 347
    key_kb_menu         = 348
    key_left_bracket    = 91
    key_backslash       = 92
    key_right_bracket   = 93
    key_grave           = 96

    // Keypad keys
    key_kp_0            = 320
    key_kp_1            = 321
    key_kp_2            = 322
    key_kp_3            = 323
    key_kp_4            = 324
    key_kp_5            = 325
    key_kp_6            = 326
    key_kp_7            = 327
    key_kp_8            = 328
    key_kp_9            = 329
    key_kp_decimal      = 330
    key_kp_divide       = 331
    key_kp_multiply     = 332
    key_kp_subtract     = 333
    key_kp_add          = 334
    key_kp_enter        = 335
    key_kp_equal        = 336

	// Android Button
	key_back            = 4
    key_menu            = 82
    key_volume_up       = 24
    key_volume_down     = 25
)

const (
	mouse_left_button = 0
	mouse_right_button = 1
	mouse_middle_button = 2
)

enum GamepadPlayer {
	player1 player2 player3 player4
}

enum GamepadButton {
	unknown

    // This is normally [A,B,X,Y]/[Circle,Triangle,Square,Cross]
    // No support for 6 button controllers though..
    left_face_up
    left_face_right
    left_face_down
    left_face_left

    // This is normally a DPAD
    right_face_up
    right_face_right
    right_face_down
    right_face_left

    // Triggers
    left_trigger_1
    left_trigger_2
    right_trigger_1
    right_trigger_2

    // These are buttons in the center of the gamepad
    middle_left     //PS3 Select
    middle          //PS Button/XBOX Button
    middle_right    //PS3 Start

    // These are the joystick press in buttons
    left_thumb
    right_thumb
}

enum GamepadAxis {
	// This is here just for error checking
    unknown

    // Left stick
    left_x
    left_y

    // Right stick
    right_x
    right_y

    // Pressure levels for the back triggers
    left_trigger      // [1..-1] (pressure-level)
    right_trigger      // [1..-1] (pressure-level)
}


// Window-Related Functions

// Initialize window and OpenGL context
pub fn init_window(w, h int, title string) {
	C.InitWindow(w, h, title.str)
}

// Check if KEY_ESCAPE pressed or Close icon pressed
pub fn window_should_close() bool {
	return C.WindowShouldClose()
}

// Close window and unload OpenGL context
pub fn close_window() {
	C.CloseWindow()
}

// Check if window has been initialized successfully
pub fn is_window_ready() bool {
	return C.IsWindowReady()
}

// Check if window has been minimized (or lost focus)
pub fn is_window_minimized() bool {
	return C.IsWindowMinimized()
}

// Check if window has been resized
pub fn is_window_resized() bool {
	return C.IsWindowResized()
}

// Check if window is currently hidden
pub fn is_window_hidden() bool {
	return C.IsWindowHidden()
}

// Toggle fullscreen mode (only PLATFORM_DESKTOP)
pub fn toggle_fullscreen() {
	C.ToggleFullscreen()
}

// Show the window
pub fn unhide_window() {
	C.UnhideWindow()
}

// Hide the window
pub fn hide_window() {
	C.HideWindow()
}

// Set icon for window (only PLATFORM_DESKTOP)
pub fn set_window_icon(image Image) {
	C.SetWindowIcon(image)
}

// Set title for window (only PLATFORM_DESKTOP)
pub fn set_window_title(title string) {
	C.SetWindowTitle(title.str)
}

// Set window position on screen (only PLATFORM_DESKTOP)
pub fn set_window_position(x, y int) {
	C.SetWindowPosition(x, y)
}

// Set monitor for the current window (fullscreen mode)
pub fn set_window_monitor(monitor int) {
	C.SetWindowMonitor(monitor)
}

// Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)
pub fn set_window_min_size(width, height int) {
	C.SetWindowMinSize(width, height)
}

// Set window dimensions
pub fn set_window_size(width, height int) {
	C.SetWindowSize(width, height)
}

// Get native window handle
pub fn get_window_hanlde() voidptr {
	return C.GetWindowHandle()
}

// Get current screen width
pub fn get_screen_width() int {
	return C.GetScreenWidth()
}

// Get current screen height
pub fn get_screen_height() int {
	return C.GetScreenHeight()
}

// Get number of connected monitors
pub fn get_monitor_count() int {
	return C.GetMonitorCount()
}

// Get primary monitor width
pub fn get_monitor_width(monitor int) int {
	return C.GetMonitorWidth(monitor)
}

// Get primary monitor height
pub fn get_monitor_height(monitor int) int {
	return C.GetMonitorHeight(monitor)
}

// Get primary monitor physical width in millimetres
pub fn get_monitor_physical_width(monitor int) int {
	return C.GetMonitorPhysicalWidth(monitor)
}

// Get primary monitor physical height in millimetres
pub fn get_monitor_physical_height(monitor int) int {
	return C.GetMonitorPhysicalHeight(monitor)
}

// Get the human-readable, UTF-8 encoded name of the primary monitor
pub fn get_monitor_name(monitor int) string {
	return string(byteptr(C.GetMonitorName(monitor)))
}

// Get clipboard text content
pub fn get_clipboard_text() string {
	return string(byteptr(C.GetClipboardText()))
}

// Set clipboard text content
pub fn set_clipboard_text(text string) {
	C.SetClipboardText(text.str)
}

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

// Timing-related functions
//

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

// Drawing-related functions
pub fn clear_background(c Color) {
	C.ClearBackground(c)
}

pub fn begin_drawing() {
	C.BeginDrawing()
}

pub fn end_drawing() {
	C.EndDrawing()
}

pub fn begin_mode_2d(camera Camera2D) {
	C.BeginMode2D(camera)
}

pub fn end_mode_2d() {
	C.EndMode2D()
}

pub fn begin_mode_3d(camera Camera3D) {
	C.BeginMode3D(camera)
}

pub fn end_mode_3d() {
	C.EndMode3D()
}

pub fn begin_texture_mode(target RenderTexture2D) {
	C.BeginTextureMode(target)
}

pub fn end_texture_mode() {
	C.EndTextureMode()
}


// Color Related Functions
pub fn color_to_int(color Color) int {
	return C.ColorToInt(color)
}

pub fn color_normalize(color Color) Vector4 {
	return C.ColorNormalize(color)
}

pub fn color_to_hsv(color Color) Vector3 {
	return C.ColorToHSV(color)
}

pub fn color_from_hsv(hsv Vector3) Color {
	return C.ColorFromHSV(hsv)
}

pub fn get_color(hexValue int) Color {
	return C.GetColor(hexValue)
}

pub fn fade(color Color, alpha f32) Color {
	return C.Fade(color, alpha)
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

// Persistent storage management

// Save integer value to storage file (to defined position)
pub fn storage_save_value(position, value int) {
	C.StorageSaveValue(position, value)
}

// Load integer value from storage file (from defined position)
pub fn storage_load_value(position int) int {
	return C.StorageLoadValue(position)
}

pub fn open_url(url string) {
	C.OpenURL(url.str)
}


// --------------------------------------------
// Input Handling Functions
// --------------------------------------------

// Input-related functions: key
pub fn is_key_down(key int) bool {
	return C.IsKeyDown(key)
}

pub fn is_key_pressed(key int)  bool {
	return C.IsKeyPressed(key)
}

pub fn is_key_released(key int) bool {
	return C.IsKeyReleased(key)
}

pub fn is_key_up(key int) bool {
	return C.IsKeyUp(key)
}

pub fn get_key_pressed() int {
	return C.GetKeyPressed()
}

pub fn set_exit_key(key int) {
	C.SetExitKey(key)
}


// Input-related functions: mouse
//


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

// Input-related functions: touch
//

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

// Input-related functions: gamepads
//

// Detect if a gamepad is available
pub fn is_gamepad_available(gamepad int) bool {
	return C.IsGamepadAvailable(gamepad)
}

// Check gamepad name (if available)
pub fn is_gamepad_name(gamepad int, name string) bool {
	return C.IsGamepadName(gamepad, name.str)
}

// Return gamepad internal name id
pub fn get_gamepad_name(gamepad int) string {
	return string(byteptr(C.GetGamepadName(gamepad)))
}

// Detect if a gamepad button has been pressed once
pub fn is_gamepad_button_pressed(gamepad, button int) bool {
	return C.IsGamepadButtonPressed(gamepad, button)
}

// Detect if a gamepad button is being pressed
pub fn is_gamepad_button_down(gamepad, button int) bool {
	return C.IsGamepadButtonDown(gamepad, button)
}

// Detect if a gamepad button has been released once
pub fn is_gamepad_button_releaed(gamepad, button int) bool {
	return C.IsGamepadButtonReleased(gamepad, button)
}

// Detect if a gamepad button is NOT being pressed
pub fn is_gamepad_button_up(gamepad, button int) bool {
	return C.IsGamepadButtonUp(gamepad, button)
}

// Get the last gamepad button pressed
pub fn get_gamepad_button_pressed() int {
	return C.GetGamepadButtonPressed()
}

// Return gamepad axis count for a gamepad
pub fn get_gamepad_axis_count(gamepad int) int {
	return C.GetGamepadAxisCount(gamepad)
}

// Return axis movement value for a gamepad axis
pub fn get_gamepad_axis_movement(gamepad, axis int) f32 {
	return C.GetGamepadAxisMovement(gamepad, axis)
}

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

//------------------------------------------------------------------------------------
// Camera System Functions (Module: camera)
//------------------------------------------------------------------------------------
// Set camera mode (multiple camera modes available)
pub fn set_camera_mode(camera Camera3D, mode int) {
	C.SetCameraMode(camera, mode)
}

// Update camera position for selected mode
pub fn update_camera(camera &Camera3D) {
	C.UpdateCamera(camera)
}

// Set camera pan key to combine with mouse movement (free camera)
pub fn set_camera_pan_control(panKey int) {
	C.SetCameraPanControl(panKey)
}

// Set camera alt key to combine with mouse movement (free camera)
pub fn set_camera_alt_control(altKey int) {
	C.SetCameraAltControl(altKey)
}

// Set camera smooth zoom key to combine with mouse (free camera)
pub fn set_camera_smooth_zoom_control(szKey int) {
	C.SetCameraSmoothZoomControl(szKey)
}

// Set camera move controls (1st person and 3rd person cameras)
pub fn set_camera_move_controls(frontKey, backKey, rightKey, leftKey, upKey, downKey int) {
	C.SetCameraMoveControls(frontKey, backKey, rightKey, leftKey, upKey, downKey)
}


// Shape Drawing Functions
// Basic shapes drawing functions
pub fn draw_pixel(posX, posY int, color Color) {
	C.DrawPixel(posX, posY, color)
}

pub fn draw_pixel_v(position Vector2, color Color) {
	C.DrawPixelV(position, color)
}

pub fn draw_line(startPosX, startPosY, endPosX, endPosY int, color Color) {
	C.DrawLine(startPosX, startPosY, endPosX, endPosY, color)
}

pub fn draw_line_v(startPos, endPos Vector2, color Color) {
	C.DrawLineV(startPos, endPos, color)
}

pub fn draw_line_ex(startPos, endPos Vector2, thick f32, color Color) {
	C.DrawLineEx(startPos, endPos, thick, color)
}

pub fn draw_line_bezier(startPos, endPos Vector2, thick f32, color Color) {
	C.DrawLineBezier(startPos, endPos, thick, color)
}

pub fn draw_line_strip(points &Vector2, numPoints int, color Color) {
	C.DrawLineStrip(points, numPoints, color)
}

pub fn draw_circle(centerX, centerY int, radius f32, color Color) {
	C.DrawCircle(centerX, centerY, radius, color)
}

pub fn draw_circle_sector(center Vector2, radius f32, startAngle, endAngle, segments int, color Color) {
	C.DrawCircleSector(center, radius, startAngle, endAngle, segments, color)
}

pub fn draw_circle_sector_lines(center Vector2, radius f32, startAngle, endAngle, segments int, color Color) {
	C.DrawCircleSectorLines(center, radius, startAngle, endAngle, segments, color)
}

pub fn draw_circle_gradient(centerX, centerY int, radius f32, color1, color2 Color) {
	C.DrawCircleGradient(centerX, centerY, radius, color1, color2)
}

pub fn draw_circle_v(center Vector2, radius f32, color Color) {
	C.DrawCircleV(center, radius, color)
}

pub fn draw_circle_lines(centerX, centerY int, radius f32, color Color) {
	C.DrawCircleLines(centerX, centerY, radius, color)
}

pub fn draw_ring(center Vector2, innerRadius, outerRadius f32, startAngle, endAngle, segments int, color Color) {
	C.DrawRing(center, innerRadius, outerRadius, startAngle, endAngle, segments, color)
}

pub fn draw_ring_lines(center Vector2, innerRadius, outerRadius f32, startAngle, endAngle, segments int, color Color) {
	C.DrawRingLines(center, innerRadius, outerRadius, startAngle, endAngle, segments, color)
}

pub fn draw_rectangle(posX, posY, width, height int, color Color) {
	C.DrawRectangle(posX, posY, width, height, color)
}

pub fn draw_rectangle_v(position, size Vector2, color Color) {
	C.DrawRectangleV(position, size, color)
}

pub fn draw_rectangle_rec(rec Rectangle, color Color) {
	C.DrawRectangleRec(rec, color)
}

pub fn draw_rectangle_pro(rec Rectangle, origin Vector2, rotation f32, color Color) {
	C.DrawRectanglePro(rec, origin, rotation, color)
}

pub fn draw_rectangle_gradient_v(posX, posY, width, height int, color1, color2 Color) {
	C.DrawRectangleGradientV(posX, posY, width, height, color1, color2)
}

pub fn draw_rectangle_gradient_h(posX, posY, width, height int, color1, color2 Color) {
	C.DrawRectangleGradientH(posX, posY, width, height, color1, color2)
}

pub fn draw_rectangle_gradient_ex(rec Rectangle, col1, col2, col3, col4 Color) {
	C.DrawRectangleGradientEx(rec, col1, col2, col3, col4)
}

pub fn draw_rectangle_lines(posX, posY, width, height int, color Color) {
	C.DrawRectangleLines(posX, posY, width, height, color)
}

pub fn draw_rectangle_lines_ex(rec Rectangle, lineThick int, color Color) {
	C.DrawRectangleLinesEx(rec, lineThick, color)
}

pub fn draw_rectangle_rounded(rec Rectangle, roundness f32, segments int, color Color) {
	C.DrawRectangleRounded(rec, roundness, segments, color)
}

pub fn draw_rectangle_rounded_lines(rec Rectangle, roundness f32, segments, lineThick int, color Color) {
	C.DrawRectangleRoundedLines(rec, roundness, segments, lineThick, color)
}

pub fn draw_triangle(v1, v2, v3 Vector2, color Color) {
	C.DrawTriangle(v1, v2, v3, color)
}

pub fn draw_triangle_lines(v1, v2, v3 Vector2, color Color) {
	C.DrawTriangleLines(v1, v2, v3, color)
}

pub fn draw_triangle_fan(points &Vector2, numPoints int, color Color) {
	C.DrawTriangleFan(points, numPoints, color)
}

pub fn draw_poly(center Vector2, sides int, radius, rotation f32, color Color) {
	C.DrawPoly(center, sides, radius, rotation, color)
}

pub fn set_shapes_texture(texture Texture2D, source Rectangle) {
	C.SetShapesTexture(texture, source)
}

// Basic Shapes Collision Detection Functions
pub fn check_collision_recs(rec1, rec2 Rectangle) bool {
	return C.CheckCollisionRecs(rec1, rec2)
}

pub fn check_collision_circles(center1 Vector2, radius1 f32, center2 Vector2, radius2 f32) bool {
	return C.CheckCollisionCircles(center1, radius1, center2, radius2)
}

pub fn check_collision_circle_rec(center Vector2, radius f32, rec Rectangle) bool {
	return C.CheckCollisionCircleRec(center, radius, rec)
}


pub fn get_collision_rec(rec1, rec2 Rectangle) Rectangle {
	return C.GetCollisionRec(rec1, rec2)
}

pub fn check_collision_point_rec(point Vector2, rec Rectangle) bool {
	return C.CheckCollisionPointRec(point, rec)
}

pub fn check_collision_point_circle(point, center Vector2, radius f32) bool {
	return C.CheckCollisionPointCircle(point, center, radius)
}

pub fn check_collision_point_triangle(point, p1, p2, p3 Vector2) bool {
	return C.CheckCollisionPointTriangle(point, p1, p2, p3)
}

// Image/Texture2D data loading/unloading/saving functions

// Load image from file into CPU memory (RAM)
pub fn load_image(fileName string) Image {
	return C.LoadImage(fileName.str)
}

// Load image from Color array data (RGBA - 32bit)
pub fn load_image_ex(pixel &Color, width, height int) Image {
	return C.LoadImageEx(pixel, width, height)

}

// Load image from raw data with parameters
pub fn load_image_proc(data voidptr, width, height, format int) Image {
	return C.LoadImagePro(data, width, height, format)
}

// Load image from RAW file data
pub fn load_image_raw(fileName string, width, height, format, headerSize int) Image {
	return C.LoadImageRaw(fileName.str, width, height, format, headerSize)
}

// Export image data to file
pub fn export_image(image Image, fileName string) {
	C.ExportImage(image, fileName.str)
}

// Export image as code file defining an array of bytes
pub fn export_image_as_code(image Image, fileName string) {
	C.ExportImageAsCode(image, fileName.str)
}

// Load texture from file into GPU memory (VRAM)
pub fn load_texture(fileName string) Texture2D {
	return C.LoadTexture(fileName.str)
}

// Load texture from image data
pub fn load_texture_from_image(image Image) Texture2D {
	return C.LoadTextureFromImage(image)
}

// Load cubemap from image, multiple image cubemap layouts supported
// pub fn load_texture_cubemap(image Image, layoutType int) TextureCubemap {
// 	return C.TextureCubemap(image, layoutType)
// }

// Load texture for rendering (framebuffer)
pub fn load_render_texture(width, height int) RenderTexture2D {
	return C.LoadRenderTexture(width, height)
}

// Unload image from CPU memory (RAM)
pub fn unload_image(image Image) {
	C.UnloadImage(image)
}

// Unload texture from GPU memory (VRAM)
pub fn unload_texture(texture Texture2D) {
	C.UnloadTexture(texture)
}

// Unload render texture from GPU memory (VRAM)
pub fn unload_render_texture(target RenderTexture2D) {
	C.UnloadRenderTexture(target)
}

// Color *GetImageData(Image image);                                                                   // Get pixel data from image as a Color struct array
// Vector4 *GetImageDataNormalized(Image image);                                                       // Get pixel data from image as Vector4 array (float normalized)

// Get pixel data size in bytes (image or texture)
pub fn get_pixel_data_size(width, height, format int) int {
	return C.GetPixelDataSize(width, height, format)
}

// Get pixel data from GPU texture and return an Image
pub fn get_texture_data(texture Texture2D) Image {
	return C.GetTextureData(texture)
}

// Get pixel data from screen buffer and return an Image (screenshot)
pub fn get_screen_data() Image {
	return C.GetScreenData()
}

// Update GPU texture with new data
pub fn update_texture(texture Texture2D, pixels voidptr) {
	C.UpdateTexture(texture, pixels)
}

// Image manipulation functions
//

// Create an image duplicate (useful for transformations)
pub fn image_copy(image Image) Image {
	return C.ImageCopy(image)
}

// Convert image to POT (power-of-two)
pub fn image_to_pot(image &Image, fillColor Color) {
	C.ImageToPOT(image, fillColor)
}

// Convert image data to desired format
pub fn image_format(image &Image, newFormat int) {
	C.ImageFormat(image, newFormat)
}

// Apply alpha mask to image
pub fn image_alpha_mask(image &Image, alphaMask Image) {
	C.ImageAlphaMask(image, alphaMask)
}

// Clear alpha channel to desired color
pub fn image_alpha_clear(image &Image, color Color, threshold f32) {
	C.ImageAlphaClear(image, color, threshold)
}

// Crop image depending on alpha value
pub fn image_alpha_crop(image &Image, threshold f32) {
	C.ImageAlphaCrop(image, threshold)
}

// Premultiply alpha channe
pub fn image_alpha_premultiply(image &Image) {
	C.ImageAlphaPremultiply(image)
}

// Crop an image to a defined rectangle
pub fn image_crop(image &Image, crop Rectangle) {
	C.ImageCrop(image, crop)
}

// Resize image (Bicubic scaling algorithm)
pub fn image_resize(image &Image, newWidth, newHeight int) {
	C.ImageResize(image, newWidth, newHeight)
}

// Resize image (Nearest-Neighbor scaling algorithm)
pub fn image_resize_nn(image &Image, newWidth, newHeight int) {
	C.ImageResizeNN(image, newWidth, newHeight)
}

// Resize canvas and fill with color
pub fn image_resize_canvas(image &Image, newWidth, newHeight, offsetX, offsetY int, color Color) {
	C.ImageResizeCanvas(image, newWidth, newHeight, offsetX, offsetY, color)
}

// Generate all mipmap levels for a provided image
pub fn image_mipmaps(image &Image) {
	C.ImageMipmaps(image)
}

// Dither image data to 16bpp or lower (Floyd-Steinberg dithering)
pub fn image_dither(image &Image, rBpp, gBpp, bBpp, aBpp int) {
	C.ImageDither(image, rBpp, gBpp, bBpp, aBpp)
}


// Font loading/unloading functions

// Get the default Font
pub fn get_font_defauilt() Font {
	return C.GetFontDefault()
}

// Load font from file into GPU memory (VRAM)
pub fn load_font(fileName string) Font {
	return C.LoadFont(fileName.str)
}

// Load font from file with extended parameters
pub fn load_font_ex(fileName string, fontSize int, fontChars &int, charsCount int) Font {
	return C.LoadFontEx(fileName.str, fontSize, fontChars, charsCount)
}

// Load font from Image (XNA style)
pub fn load_font_from_image(image Image, key Color, firstChar int) Font {
	return C.LoadFontFromImage(image, key, firstChar)
}

// Load font data for further use
pub fn load_font_data(fileName string, fontSize int, fontChars &int, charsCount, @type int) &CharInfo {
	return C.LoadFontData(fileName.str, fontSize, fontChars, charsCount, @type)
}

// Unload Font
pub fn unload_font(font Font) {
	C.UnloadFont(font)
}


// Text Drawing Functions
//

pub fn draw_fps(posX, posY int) {
	C.DrawFPS(posX, posY)
}

pub fn draw_text(text string, posX, posY, fontSize int, color Color) {
	C.DrawText(text.str, posX, posY, fontSize, color)
}

pub fn (f Font) draw_text_ex(text string, position Vector2, fontSize, spacing f32, tint Color) {
	C.DrawTextEx(f, text.str, position, fontSize, spacing, tint)
}

pub fn (f Font) draw_text_rec(
	text string,
	rec Rectangle,
	fontSize, spacing f32,
	wordWrap bool,
	tint Color) {
	C.DrawTextRec(f, text.str, rec, fontSize, spacing, wordWrap, tint)
}

pub fn (f Font) draw_text_rec_ex(
	text string,
	rec Rectangle
	fontSize, spacing f32
	wordWrap bool,
	tint Color,
	selectStart, selectLength int,
	selectText, selectBack Color) {
	C.DrawTextRecEx(f, text.str, rec, fontSize, spacing, wordWrap, tint, selectStart, selectLength, selectText, selectBack)
}


// Text misc. functions
//

// Measure string width for default font
pub fn measure_text(text string, fontSize int) int {
	return C.MeasureText(text.str, fontSize)
}
// Measure string size for Font
pub fn measure_text_ex(font Font, text string, fontSize, spacing f32) Vector2 {
	return C.MeasureTextEx(font, text.str, fontSize, spacing)
}
// Get index position for a unicode character on font
pub fn get_glyph_index(font Font, character int) int {
	return C.GetGlyphIndex(font, character)
}
