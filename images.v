module vraylib

// Image manipulation functions
// Create an image duplicate (useful for transformations)
[inline]
pub fn image_copy(image Image) Image {
	return C.ImageCopy(image)
}

// Convert image to POT (power-of-two)
[inline]
pub fn image_to_pot(image &Image, fillColor Color) {
	C.ImageToPOT(image, fillColor)
}

// Convert image data to desired format
[inline]
pub fn image_format(image &Image, newFormat int) {
	C.ImageFormat(image, newFormat)
}

// Apply alpha mask to image
[inline]
pub fn image_alpha_mask(image &Image, alphaMask Image) {
	C.ImageAlphaMask(image, alphaMask)
}

// Clear alpha channel to desired color
[inline]
pub fn image_alpha_clear(image &Image, color Color, threshold f32) {
	C.ImageAlphaClear(image, color, threshold)
}

// Crop image depending on alpha value
[inline]
pub fn image_alpha_crop(image &Image, threshold f32) {
	C.ImageAlphaCrop(image, threshold)
}

// Premultiply alpha channe
[inline]
pub fn image_alpha_premultiply(image &Image) {
	C.ImageAlphaPremultiply(image)
}

// Crop an image to a defined rectangle
[inline]
pub fn image_crop(image &Image, crop Rectangle) {
	C.ImageCrop(image, crop)
}

// Resize image (Bicubic scaling algorithm)
[inline]
pub fn image_resize(image &Image, newWidth int, newHeight int) {
	C.ImageResize(image, newWidth, newHeight)
}

// Resize image (Nearest-Neighbor scaling algorithm)
[inline]
pub fn image_resize_nn(image &Image, newWidth int, newHeight int) {
	C.ImageResizeNN(image, newWidth, newHeight)
}

// Resize canvas and fill with color
[inline]
pub fn image_resize_canvas(image &Image, newWidth int, newHeight int, offsetX int, offsetY int, color Color) {
	C.ImageResizeCanvas(image, newWidth, newHeight, offsetX, offsetY, color)
}

// Generate all mipmap levels for a provided image
[inline]
pub fn image_mipmaps(image &Image) {
	C.ImageMipmaps(image)
}

// Dither image data to 16bpp or lower (Floyd-Steinberg dithering)
[inline]
pub fn image_dither(image &Image, rBpp int, gBpp int, bBpp int, aBpp int) {
	C.ImageDither(image, rBpp, gBpp, bBpp, aBpp)
}


// Create an image from text (default font)
[inline]
pub fn image_text(text string, fontSize int, color Color) Image {
	return C.ImageText(text.str, fontSize, color)
}

// Create an image from text (custom sprite font)
[inline]
pub fn image_text_ex(font Font, text string, fontSize f32, spacing f32, tint Color) Image {
	return C.ImageTextEx(font, text.str, fontSize, spacing, tint)
}

// TODO: Potential TCC bug
// Draw a source image within a destination image
// [inline] pub fn image_draw(dst &Image, src Image, srcRec, dstRec Rectangle) {
// 	C.ImageDraw(dst, src, srcRec, dstRec)
// }
// Draw rectangle within an image
[inline]
pub fn image_draw_rectangle(dst &Image, pos_x int, pos_y int, width int, height int, color Color) {
	C.ImageDrawRectangle(dst, pos_x, pos_y, width, height, color)
}

// Draw rectangle lines within an image
[inline]
pub fn image_draw_rectangle_lines(dst &Image, rec Rectangle, thick int, color Color) {
	C.ImageDrawRectangleLines(dst, rec, thick, color)
}

// Draw text (default font) within an image (destination)
[inline]
pub fn image_draw_text(dst &Image, text string, pos_x int, pos_y int, fontSize int, color Color) {
	C.ImageDrawText(dst, text.str, pos_x, pos_y, fontSize, color)
}

// Draw text (custom sprite font) within an image (destination)
[inline]
pub fn image_draw_text_ex(dst &Image, font Font, text string, position Vector2, fontSize f32, spacing f32, color Color) {
	C.ImageDrawTextEx(dst, font, text.str, position, fontSize, spacing, color)
}

// Flip image vertically
[inline]
pub fn image_flip_vertical(image &Image) {
	C.ImageFlipVertical(image)
}

// Flip image horizontally
[inline]
pub fn image_flip_horizontal(image &Image) {
	C.ImageFlipHorizontal(image)
}

// Rotate image clockwise 90deg
[inline]
pub fn image_rotate_cw(image &Image) {
	C.ImageRotateCW(image)
}

// Rotate image counter-clockwise 90deg
[inline]
pub fn image_rotate_ccw(image &Image) {
	C.ImageRotateCCW(image)
}

// Modify image color: tint
[inline]
pub fn image_color_tint(image &Image, color Color) {
	C.ImageColorTint(image, color)
}

// Modify image color: invert
[inline]
pub fn image_color_invert(image &Image) {
	C.ImageColorInvert(image)
}

// Modify image color: grayscale
[inline]
pub fn image_color_grayscale(image &Image) {
	C.ImageColorGrayscale(image)
}

// Modify image color: contrast (-100 to 100)
[inline]
pub fn image_color_contrast(image &Image, contrast f32) {
	C.ImageColorContrast(image, contrast)
}

// Modify image color: brightness (-255 to 255)
[inline]
pub fn image_color_brightness(image &Image, brightness int) {
	C.ImageColorBrightness(image, brightness)
}

// Modify image color: replace color
[inline]
pub fn image_color_replace(image &Image, color Color, replace Color) {
	C.ImageColorReplace(image, color, replace)
}

// // Image generation functions
//
// Generate image: plain color
[inline]
pub fn gen_image_color(width int, height int, color Color) Image {
	return C.GenImageColor(width, height, color)
}

// Generate image: vertical gradient
[inline]
pub fn gen_image_gradient_v(width int, height int, top Color, bottom Color) Image {
	return C.GenImageGradientV(width, height, top, bottom)
}

// Generate image: horizontal gradient
[inline]
pub fn get_image_gradient_h(width int, height int, left Color, right Color) Image {
	return C.GenImageGradientH(width, height, left, right)
}

// Generate image: radial gradient
[inline]
pub fn get_image_gradient_radial(width int, height int, density f32, inner Color, outer Color) Image {
	return C.GenImageGradientRadial(width, height, density, inner, outer)
}

// Generate image: checked
[inline]
pub fn get_image_checked(width int, height int, checksX int, checksY int, color1 Color, color2 Color) Image {
	return C.GenImageChecked(width, height, checksX, checksY, color1, color2)
}

// Generate image: white noise
[inline]
pub fn gen_image_white_noise(width int, height int, factor f32) Image {
	return C.GenImageWhiteNoise(width, height, factor)
}

// Generate image: perlin noise
[inline]
pub fn gen_image_perlin_noise(width f32, height f32, offsetX f32, offsetY f32, scale f32) Image {
	return C.GenImagePerlinNoise(width, height, offsetX, offsetY, scale)
}

// Generate image: cellular algorithm. Bigger tileSize means bigger cells
[inline]
pub fn gen_image_cellular(width int, height int, tileSize int) Image {
	return C.GenImageCellular(width, height, tileSize)
}
