module vraylib

pub const (
	texture_filter_point           = 0 // no filter, just pixel aproximation
	texture_filter_bilinear        = 1 // linear filtering
	texture_filter_trilinear       = 2 // trilinear filtering (linear with mipmaps)
	texture_filter_anisotropic_4x  = 3 // anisotropic filtering 4x
	texture_filter_anisotropic_8x  = 4 // anisotropic filtering 8x
	texture_filter_anisotropic_16x = 5 // anisotropic filtering 16x
	texture_wrap_repeat            = 0 // repeats texture in tiled mode
	texture_wrap_clamp             = 1 // clamps texture to edge pixel in tiled mode
	texture_wrap_mirror_repeat     = 2 // mirrors and repeats the texture in tiled mode
	texture_wrap_mirror_clamp      = 3 // mirrors and clamps to border the texture in tiled mode
)

// -------------------------------------------------
// 	Module - Textures
// -------------------------------------------------
// Image/Texture2D data loading/unloading/saving functions
// Load image from file into CPU memory (RAM)
[inline]
pub fn load_image(fileName string) C.Image {
	return C.LoadImage(fileName.str)
}

// Load image from RAW file data
[inline]
pub fn load_image_raw(fileName string, width int, height int, format int, headerSize int) C.Image {
	return C.LoadImageRaw(fileName.str, width, height, format, headerSize)
}

// Export image data to file
[inline]
pub fn export_image(image C.Image, fileName string) {
	C.ExportImage(image, fileName.str)
}

// Export image as code file defining an array of bytes
[inline]
pub fn export_image_as_code(image C.Image, fileName string) {
	C.ExportImageAsCode(image, fileName.str)
}

// Load texture from file into GPU memory (VRAM)
[inline]
pub fn load_texture(fileName string) C.Texture2D {
	return C.LoadTexture(fileName.str)
}

// Load texture from image data
[inline]
pub fn load_texture_from_image(image C.Image) C.Texture2D {
	return C.LoadTextureFromImage(image)
}

// Load cubemap from image, multiple image cubemap layouts supported
// [inline] pub fn load_texture_cubemap(image C.Image, layoutType int) TextureCubemap {
// 	return C.TextureCubemap(image, layoutType)
// }
// Load texture for rendering (framebuffer)
[inline]
pub fn load_render_texture(width int, height int) C.RenderTexture2D {
	return C.LoadRenderTexture(width, height)
}

// Unload image from CPU memory (RAM)
[inline]
pub fn unload_image(image C.Image) {
	C.UnloadImage(image)
}

// Unload texture from GPU memory (VRAM)
[inline]
pub fn unload_texture(texture C.Texture2D) {
	C.UnloadTexture(texture)
}

// Unload render texture from GPU memory (VRAM)
[inline]
pub fn unload_render_texture(target C.RenderTexture2D) {
	C.UnloadRenderTexture(target)
}

// Color *GetImageData(Image image);                                                                   // Get pixel data from image as a Color struct array
// Vector4 *GetImageDataNormalized(Image image);                                                       // Get pixel data from image as Vector4 array (float normalized)
// Get pixel data size in bytes (image or texture)
[inline]
pub fn get_pixel_data_size(width int, height int, format int) int {
	return C.GetPixelDataSize(width, height, format)
}

// Get pixel data from GPU texture and return an Image
[inline]
pub fn get_texture_data(texture C.Texture2D) C.Image {
	return C.GetTextureData(texture)
}

// Get pixel data from screen buffer and return an Image (screenshot)
[inline]
pub fn get_screen_data() C.Image {
	return C.GetScreenData()
}

// Update GPU texture with new data
[inline]
pub fn update_texture(texture C.Texture2D, pixels voidptr) {
	C.UpdateTexture(texture, pixels)
}

////////////////////////////////////////////////////////////////////////////////
// Texture2D configuration functions
//
// Generate GPU mipmaps for a texture
[inline]
pub fn gen_texture_mipmaps(texture &C.Texture2D) {
	C.GenTextureMipmaps(texture)
}

// Set texture scaling filter mode
[inline]
pub fn set_texture_filter(texture C.Texture2D, filterMode int) {
	C.SetTextureFilter(texture, filterMode)
}

// Set texture wrapping mode
[inline]
pub fn set_texture_wrap(texture C.Texture2D, wrapMode int) {
	C.SetTextureWrap(texture, wrapMode)
}

// Texture2D drawing functions
//
// Draw a Texture2D
[inline]
pub fn draw_texture(texture C.Texture2D, posX int, posY int, tint C.Color) {
	C.DrawTexture(texture, posX, posY, tint)
}

// Draw a Texture2D with position defined as Vector2
[inline]
pub fn draw_texture_v(texture C.Texture2D, position C.Vector2, tint C.Color) {
	C.DrawTextureV(texture, position, tint)
}

// Draw a Texture2D with extended parameters
[inline]
pub fn draw_texture_ex(texture C.Texture2D, position C.Vector2, rotation f32, scale f32, tint C.Color) {
	C.DrawTextureEx(texture, position, rotation, scale, tint)
}

// Draw a part of a texture defined by a rectangle
[inline]
pub fn draw_texture_rec(texture C.Texture2D, sourceRec C.Rectangle, position C.Vector2, tint C.Color) {
	C.DrawTextureRec(texture, sourceRec, position, tint)
}

// Draw texture quad with tiling and offset parameters
[inline]
pub fn draw_texture_quad(texture C.Texture2D, tiling C.Vector2, offset C.Vector2, quad Rectangle, tint C.Color) {
	C.DrawTextureQuad(texture, tiling, offset, quad, tint)
}

// Draw a part of a texture defined by a rectangle with 'pro' parameters
[inline]
pub fn draw_texture_pro(texture C.Texture2D, sourceRec Rectangle, destRec Rectangle, origin C.Vector2, rotation f32, tint C.Color) {
	C.DrawTexturePro(texture, sourceRec, destRec, origin, rotation, tint)
}

// Draws a texture (or part of it) that stretches or shrinks nicely
[inline]
pub fn draw_texture_n_patch(texture C.Texture2D, nPatchInfo C.NPatchInfo, destRec Rectangle, origin C.Vector2, rotation f32, tint C.Color) {
	C.DrawTextureNPatch(texture, nPatchInfo, destRec, origin, rotation, tint)
}
