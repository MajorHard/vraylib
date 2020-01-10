module vraylib

// -------------------------------------------------
// 	Module - Textures
// -------------------------------------------------

fn C.LoadImage(fileName byteptr) C.Image
fn C.LoadImageEx(pixels C.Color, width, height int) C.Image
fn C.LoadImagePro(data voidptr, width, height, format int) C.Image
fn C.LoadImageRaw(fileName byteptr, width, height, format, headerSize int) C.Image
fn C.ExportImage(image C.Image, fileName byteptr)
fn C.ExportImageAsCode(image C.Image, fileName byteptr)
fn C.LoadTexture(fileName byteptr) C.Texture2D
fn C.LoadTextureFromImage(image C.Image) C.Texture2D
fn C.LoadRenderTexture(width, height int) C.RenderTexture2D
fn C.UnloadImage(image C.Image)
fn C.UnloadTexture(texture C.Texture2D)
fn C.UnloadRenderTexture(target C.RenderTexture2D)
fn C.GetPixelDataSize(width, height, format int) int
fn C.GetTextureData(texture C.Texture2D) C.Image
fn C.GetScreenData() C.Image
fn C.UpdateTexture(texture C.Texture2D, pixels voidptr)

fn C.GenTextureMipmaps(texture C.Texture2D)
fn C.SetTextureFilter(texture C.Texture2D, filterMode int)
fn C.SetTextureWrap(texture C.Texture2D, wrapMode int)

fn C.DrawTexture(texture C.Texture2D, posX, posY int, tint C.Color)
fn C.DrawTextureV(texture C.Texture2D, position C.Vector2, tint C.Color)
fn C.DrawTextureEx(texture C.Texture2D, position C.Vector2, rotation, scale f32, tint C.Color)
fn C.DrawTextureRec(texture C.Texture2D, sourceRec C.Rectangle, position C.Vector2, tint C.Color)
fn C.DrawTextureQuad(texture C.Texture2D, tiling, offset C.Vector2, quad C.Rectangle, tint C.Color)
fn C.DrawTexturePro(texture C.Texture2D, sourceRec, destRec C.Rectangle, origin C.Vector2, rotation f32, tint C.Color)
fn C.DrawTextureNPatch(texture C.Texture2D, nPatchInfo C.NPatchInfo, destRec C.Rectangle, origin C.Vector2, rotation f32, tint C.Color)

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


////////////////////////////////////////////////////////////////////////////////

// Texture2D configuration functions
//

// Generate GPU mipmaps for a texture
pub fn gen_texture_mipmaps(texture &Texture2D) {
	C.GenTextureMipmaps(texture)
}

// Set texture scaling filter mode
pub fn set_texture_filter(texture Texture2D, filterMode int) {
	C.SetTextureFilter(texture, filterMode)
}

// Set texture wrapping mode
pub fn set_texture_wrap(texture Texture2D, wrapMode int) {
	C.SetTextureWrap(texture, wrapMode)
}

// Texture2D drawing functions
//

// Draw a Texture2D
pub fn draw_texture(texture Texture2D, posX, posY int, tint Color) {
	C.DrawTexture(texture, posX, posY, tint)
}

// Draw a Texture2D with position defined as Vector2
pub fn draw_texture_v(texture Texture2D, position Vector2, tint Color) {
	C.DrawTextureV(texture, position, tint)
}

// Draw a Texture2D with extended parameters
pub fn draw_texture_ex(texture Texture2D, position Vector2, rotation, scale f32, tint Color) {
	C.DrawTextureEx(texture, position, rotation, scale, tint)
}

// Draw a part of a texture defined by a rectangle
pub fn draw_texture_rec(texture Texture2D, sourceRec Rectangle, position Vector2, tint Color) {
	C.DrawTextureRec(texture, sourceRec, position, tint)
}

// Draw texture quad with tiling and offset parameters
pub fn draw_texture_quad(texture Texture2D, tiling, offset Vector2, quad Rectangle, tint Color) {
	C.DrawTextureQuad(texture, tiling, offset, quad, tint)
}

// Draw a part of a texture defined by a rectangle with 'pro' parameters
pub fn draw_texture_pro(texture Texture2D, sourceRec, destRec Rectangle, origin Vector2, rotation f32, tint Color) {
	C.DrawTexturePro(texture, sourceRec, destRec, origin, rotation, tint)
}

// Draws a texture (or part of it) that stretches or shrinks nicely
pub fn draw_texture_n_patch(texture Texture2D, nPatchInfo NPatchInfo, destRec Rectangle, origin Vector2, rotation f32, tint Color) {
	C.DrawTextureNPatch(texture, nPatchInfo, destRec, origin, rotation, tint)
}

