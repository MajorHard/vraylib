module vraylib

// Text Drawing Functions
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
