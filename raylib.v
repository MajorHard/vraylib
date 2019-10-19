module raylib
#flag linux -lraylib -lGL -lm -lpthread -ldl -lrt -lX11
#include "raylib.h"

struct C.Vector2 {
pub:
	x f32
	y f32
}

struct C.Vector3 {
pub:
	x f32
	y f32
	z f32

}

struct C.Vector4 {
pub:
	x f32
	y f32
	z f32
	w f32
}

type Quaternion C.Vector4

struct C.Matrix {
pub:
	m0 f32
	m1 f32
	m2 f32
	m3 f32
	m4 f32
	m5 f32
	m6 f32
	m7 f32
	m8 f32
	m9 f32
	m10 f32
	m11 f32
	m12 f32
	m13 f32
	m14 f32
	m15 f32
}


struct C.Image {
pub:
	data voidptr
	width int
	height int
	mipmaps int
	format int
}

struct C.Rectangle {
pub:
	x f32
	y f32
	width f32
	height f32

}

struct C.Texture2D {
pub:
	id u32
	width int
	height int
	mipmaps int
	format int
}
type Texture Texture2D

struct C.Color {
pub:
	r byte
	g byte
	b byte
	a byte
}

struct C.CharInfo {
pub:
	value int
	offsetX int
	offsetY int
	advanceX int
	image Image
}

struct C.Font {
pub:
	baseSize int
	charsCount int
	texture Texture2D
	recs &Rectangle
	chars &CharInfo
}

const (
	lightgray  = Color{ r: 200, g: 200, b: 200, a: 255 }
    gray       = Color{ r: 130, g: 130, b: 130, a: 255 }
    darkgray   = Color{ r: 80,  g: 80,  b: 80,  a: 255 }
    yellow     = Color{ r: 253, g: 249, b: 0,   a: 255 }
    gold       = Color{ r: 255, g: 203, b: 0,   a: 255 }
    orange     = Color{ r: 255, g: 161, b: 0,   a: 255 }
    pink       = Color{ r: 255, g: 109, b: 194, a: 255 }
    red        = Color{ r: 230, g: 41,  b: 55,  a: 255 }
    maroon     = Color{ r: 190, g: 33,  b: 55,  a: 255 }
    green      = Color{ r: 0,   g: 228, b: 48,  a: 255 }
    lime       = Color{ r: 0,   g: 158, b: 47,  a: 255 }
    darkgreen  = Color{ r: 0,   g: 117, b: 44,  a: 255 }
    skyblue    = Color{ r: 102, g: 191, b: 255, a: 255 }
    blue       = Color{ r: 0,   g: 121, b: 241, a: 255 }
    darkblue   = Color{ r: 0,   g: 82,  b: 172, a: 255 }
    purple     = Color{ r: 200, g: 122, b: 255, a: 255 }
    violet     = Color{ r: 135, g: 60,  b: 190, a: 255 }
    darkpurple = Color{ r: 112, g: 31,  b: 126, a: 255 }
    beige      = Color{ r: 211, g: 176, b: 131, a: 255 }
    brown      = Color{ r: 127, g: 106, b: 79,  a: 255 }
    darkbrown  = Color{ r: 76,  g: 63,  b: 47,  a: 255 }

    white      = Color{ r: 255, g: 255, b: 255, a: 255 }
    black      = Color{ r: 0,   g: 0,   b: 0,   a: 255 }
    blank      = Color{ r: 0,   g: 0,   b: 0,   a: 0   }
    magenta    = Color{ r: 255, g: 0,   b: 255, a: 255 }
    raywhite   = Color{ r: 245, g: 245, b: 245, a: 255 }
)


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

pub fn begin_drawing() {
	C.BeginDrawing()
}

pub fn end_drawing() {
	C.EndDrawing()
}

pub fn clear_background(c Color) {
	C.ClearBackground(c)
}

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
