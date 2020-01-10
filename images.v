module vraylib

// Image manipulation functions
//

fn C.ImageCopy(image C.Image) C.Image
fn C.ImageToPOT(image C.Image, fillColor C.Color)
fn C.ImageFormat(image C.Image, newFormat int)
fn C.ImageAlphaMask(image C.Image, alphaMask C.Image)
fn C.ImageAlphaClear(image C.Image, color C.Color, threshold f32)
fn C.ImageAlphaCrop(image C.Image, threshold f32)
fn C.ImageAlphaPremultiply(image C.Image)
fn C.ImageCrop(image C.Image, crop C.Rectangle)
fn C.ImageResize(image C.Image, newWidth, newHeight int)
fn C.ImageResizeNN(image C.Image, newWidth, newHeight int)
fn C.ImageResizeCanvas(image C.Image, newWidth, newHeight, offsetX, offsetY int, color C.Color)
fn C.ImageMipmaps(image C.Image)
fn C.ImageDither(image C.Image, rBpp, gBpp, bBpp, aBpp int)
fn C.ImageExtractPalette(image C.Image, maxPaletteSize int, extractCount int) C.Color
fn C.ImageText(text byteptr, fontSize int, color C.Color) C.Image
fn C.ImageTextEx(font C.Font, text byteptr, fontSize, spacing f32, tint C.Color) C.Image
fn C.ImageDrawRectangle(dst C.Image, rec C.Rectangle, color C.Color)
fn C.ImageDrawRectangleLines(dst C.Image, rec C.Rectangle, thick int, color C.Color)
fn C.ImageDrawText(dst C.Image, position C.Vector2, text byteptr, fontSize int, color C.Color)
fn C.ImageDrawTextEx(dst C.Image, position C.Vector2, font C.Font, text byteptr, fontSize, spacing f32, color C.Color)
fn C.ImageFlipVertical(image C.Image)
fn C.ImageFlipHorizontal(image C.Image)
fn C.ImageRotateCW(image C.Image)
fn C.ImageRotateCCW(image C.Image)
fn C.ImageColorTint(image C.Image, color C.Color)
fn C.ImageColorInvert(image C.Image)
fn C.ImageColorGrayscale(image C.Image)
fn C.ImageColorContrast(image C.Image, contrast f32)
fn C.ImageColorBrightness(image C.Image, brightness int)
fn C.ImageColorReplace(image C.Image, color, replace C.Color)

fn C.GenImageColor(width, height int, color C.Color) C.Image
fn C.GenImageGradientV(width, height int, top, bottom C.Color) C.Image
fn C.GenImageGradientH(width, height int, left, right C.Color) C.Image
fn C.GenImageGradientRadial(width, height int, density f32, inner, outer C.Color) C.Image
fn C.GenImageChecked(width, height, checksX, checksY int, col1, col2 C.Color) C.Image
fn C.GenImageWhiteNoise(width, height int, factor f32) C.Image
fn C.GenImagePerlinNoise(width, height, offsetX, offsetY int, scale f32) C.Image
fn C.GenImageCellular(width, height, tileSize int) C.Image

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

// Extract color palette from image to maximum size (memory should be freed)
pub fn image_extract_palette(image Image, maxPaletteSize, extractCount &int) &Color {
	return C.ImageExtractPalette(image, *maxPaletteSize, extractCount)
}

// Create an image from text (default font)
pub fn image_text(text string, fontSize int, color Color) Image {
	return C.ImageText(text.str, fontSize, color)
}

// Create an image from text (custom sprite font)
pub fn image_text_ex(font Font, text string, fontSize, spacing f32, tint Color) Image {
	return C.ImageTextEx(font, text.str, fontSize, spacing, tint)
}

// TODO: Potential TCC bug
// Draw a source image within a destination image
// pub fn image_draw(dst &Image, src Image, srcRec, dstRec Rectangle) {
// 	C.ImageDraw(dst, src, srcRec, dstRec)
// }

// Draw rectangle within an image
pub fn image_draw_rectangle(dst &Image, rec Rectangle, color Color) {
	C.ImageDrawRectangle(dst, rec, color)
}

// Draw rectangle lines within an image
pub fn image_draw_rectangle_lines(dst &Image, rec Rectangle, thick int, color Color) {
	C.ImageDrawRectangleLines(dst, rec, thick, color)
}

// Draw text (default font) within an image (destination)
pub fn image_draw_text(dst &Image, position Vector2, text string, fontSize int, color Color) {
	C.ImageDrawText(dst, position, text.str, fontSize, color)
}

// Draw text (custom sprite font) within an image (destination)
pub fn image_draw_text_ex(dst &Image, position Vector2, font Font, text string, fontSize, spacing f32, color Color) {
	C.ImageDrawTextEx(dst, position, font, text.str, fontSize, spacing, color)
}

// Flip image vertically
pub fn image_flip_vertical(image &Image) {
	C.ImageFlipVertical(image)
}

// Flip image horizontally
pub fn image_flip_horizontal(image &Image) {
	C.ImageFlipHorizontal(image)
}

// Rotate image clockwise 90deg
pub fn image_rotate_cw(image &Image) {
	C.ImageRotateCW(image)
}

// Rotate image counter-clockwise 90deg
pub fn image_rotate_ccw(image &Image) {
	C.ImageRotateCCW(image)
}

// Modify image color: tint
pub fn image_color_tint(image &Image, color Color) {
	C.ImageColorTint(image, color)
}

// Modify image color: invert
pub fn image_color_invert(image &Image) {
	C.ImageColorInvert(image)
}

// Modify image color: grayscale
pub fn image_color_grayscale(image &Image) {
	C.ImageColorGrayscale(image)
}

// Modify image color: contrast (-100 to 100)
pub fn image_color_contrast(image &Image, contrast f32) {
	C.ImageColorContrast(image, contrast)
}

// Modify image color: brightness (-255 to 255)
pub fn image_color_brightness(image &Image, brightness int) {
	C.ImageColorBrightness(image, brightness)
}

// Modify image color: replace color
pub fn image_color_replace(image &Image, color, replace Color) {
	C.ImageColorReplace(image, color, replace)
}

// // Image generation functions
//

// Generate image: plain color
pub fn gen_image_color(width, height int, color Color) Image {
	return C.GenImageColor(width, height, color)
}

// Generate image: vertical gradient
pub fn gen_image_gradient_v(width, height int, top, bottom Color) Image {
	return C.GenImageGradientV(width, height, top, bottom)
}

// Generate image: horizontal gradient
pub fn get_image_gradient_h(width, height int, left, right Color) Image {
	return C.GenImageGradientH(width, height, left, right)
}

// Generate image: radial gradient
pub fn get_image_gradient_radial(width, height int, density f32, inner, outer Color) Image {
	return C.GenImageGradientRadial(width, height, density, inner, outer)
}

// Generate image: checked
pub fn get_image_checked(width, height, checksX, checksY int, color1, color2 Color) Image {
	return C.GenImageChecked(width, height, checksX, checksY, color1, color2)
}

// Generate image: white noise
pub fn gen_image_white_noise(width, height int, factor f32) Image {
	return C.GenImageWhiteNoise(width, height, factor)
}

// Generate image: perlin noise
pub fn gen_image_perlin_noise(width, height, offsetX, offsetY, scale f32) Image {
	return C.GenImagePerlinNoise(width, height, offsetX, offsetY, scale)
}

// Generate image: cellular algorithm. Bigger tileSize means bigger cells
pub fn gen_image_cellular(width, height, tileSize int) Image {
	return C.GenImageCellular(width, height, tileSize)
}
