module vraylib

pub fn set_target_fps(fps int) {
	C.SetTargetFPS(fps)
}

pub fn init_window(w, h int, title string) {
	C.InitWindow(w, h, title.str)
}

pub fn close_window() {
	C.CloseWindow()
}

pub fn window_should_close() bool {
	return C.WindowShouldClose()
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

