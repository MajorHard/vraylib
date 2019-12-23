module vraylib

/// --------------------------------------------
///  Module - Text
/// --------------------------------------------

fn C.GetFontDefault() C.Font
fn C.LoadFont(fileName byteptr) C.Font
fn C.LoadFontEx(fileName byteptr, fontSize, fontChars, charsCount int) C.Font
fn C.LoadFontFromImage(image C.Image, key C.Color, firstChar int) C.Font
fn C.LoadFontData(fileName byteptr, fontSize, fontChars, charsCount, @type int) C.CharInfo
fn C.UnloadFont(font C.Font)

fn C.DrawFPS(posX, posY int)
fn C.DrawText(text byteptr, posX, posY, fontSize int, color C.Color)
fn C.DrawTextEx(font C.Font, text byteptr, position C.Vector2, fontSize, spacing f32, tint C.Color)
fn C.DrawTextRec(font C.Font, text byteptr, rec C.Rectangle, fontSize, spacing f32, wordWrap bool, tint C.Color)
fn C.DrawTextRecEx(font C.Font, text byteptr, rec C.Rectangle, fontSize, spacing f32, wordWrap bool, tint C.Color, selectStart, selectLength int, selectText, selectBack C.Color)

fn C.MeasureText(text byteptr, fontSize int) int
fn C.MeasureTextEx(font C.Font, text byteptr, fontSize, spacing f32) C.Vector2
fn C.GetGlyphIndex(font C.Font, character int) int

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
