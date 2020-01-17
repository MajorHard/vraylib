module vraylib

/// --------------------------------------------
///  Module - Text
/// --------------------------------------------

// Get the default Font
[inline] pub fn get_font_defauilt() Font {
	return C.GetFontDefault()
}

// Load font from file into GPU memory (VRAM)
[inline] pub fn load_font(fileName string) Font {
	return C.LoadFont(fileName.str)
}

// Load font from file with extended parameters
[inline] pub fn load_font_ex(fileName string, fontSize int, fontChars &int, charsCount int) Font {
	return C.LoadFontEx(fileName.str, fontSize, fontChars, charsCount)
}

// Load font from Image (XNA style)
[inline] pub fn load_font_from_image(image Image, key Color, firstChar int) Font {
	return C.LoadFontFromImage(image, key, firstChar)
}

// Load font data for further use
[inline] pub fn load_font_data(fileName string, fontSize int, fontChars &int, charsCount, @type int) &CharInfo {
	return C.LoadFontData(fileName.str, fontSize, fontChars, charsCount, @type)
}

// Unload Font
[inline] pub fn unload_font(font Font) {
	C.UnloadFont(font)
}


// Text Drawing Functions
//

[inline] pub fn draw_fps(posX, posY int) {
	C.DrawFPS(posX, posY)
}

[inline] pub fn draw_text(text string, posX, posY, fontSize int, color Color) {
	C.DrawText(text.str, posX, posY, fontSize, color)
}

[inline] pub fn (f Font) draw_text_ex(text string, position Vector2, fontSize, spacing f32, tint Color) {
	C.DrawTextEx(f, text.str, position, fontSize, spacing, tint)
}

[inline] pub fn (f Font) draw_text_rec(
	text string,
	rec Rectangle,
	fontSize, spacing f32,
	wordWrap bool,
	tint Color) {
	C.DrawTextRec(f, text.str, rec, fontSize, spacing, wordWrap, tint)
}

[inline] pub fn (f Font) draw_text_rec_ex(
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
[inline] pub fn measure_text(text string, fontSize int) int {
	return C.MeasureText(text.str, fontSize)
}
// Measure string size for Font
[inline] pub fn measure_text_ex(font Font, text string, fontSize, spacing f32) Vector2 {
	return C.MeasureTextEx(font, text.str, fontSize, spacing)
}
// Get index position for a unicode character on font
[inline] pub fn get_glyph_index(font Font, character int) int {
	return C.GetGlyphIndex(font, character)
}
