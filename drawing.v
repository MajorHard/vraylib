module vraylib

// Drawing-related functions

[inline] pub fn clear_background(c Color) {
	C.ClearBackground(c)
}

[inline] pub fn begin_drawing() {
	C.BeginDrawing()
}

[inline] pub fn end_drawing() {
	C.EndDrawing()
}

[inline] pub fn begin_mode_2d(camera Camera2D) {
	C.BeginMode2D(camera)
}

[inline] pub fn end_mode_2d() {
	C.EndMode2D()
}

[inline] pub fn begin_mode_3d(camera Camera3D) {
	C.BeginMode3D(camera)
}

[inline] pub fn end_mode_3d() {
	C.EndMode3D()
}

[inline] pub fn begin_texture_mode(target RenderTexture2D) {
	C.BeginTextureMode(target)
}

[inline] pub fn end_texture_mode() {
	C.EndTextureMode()
}

