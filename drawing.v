module vraylib

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

