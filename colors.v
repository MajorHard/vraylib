module vraylib

fn C.ColorToInt(color C.Color) int
fn C.ColorNormalize(color C.Color) C.Vector4
fn C.ColorToHSV(color C.Color) C.Vector3
fn C.ColorFromHSV(hsv C.Vector3) C.Color
fn C.GetColor(hexValue int) C.Color
fn C.Fade(color C.Color, alpha f32) C.Color

// Color Constants
pub const (
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

// Returns hexadecimal value for a Color
pub fn color_to_int(color Color) int {
	return C.ColorToInt(color)
}


// Return color normalized as float [0..1]
pub fn color_normalize(color Color) Vector4 {
	return C.ColorNormalize(color)
}

// Return HSV values for a Color
pub fn color_to_hsv(color Color) Vector3 {
	return C.ColorToHSV(color)
}

// Return Color from HSV values
pub fn color_from_hsv(hsv Vector3) Color {
	return C.ColorFromHSV(hsv)
}

// Returns a Color struct from hexadecimal value
pub fn get_color(hexValue int) Color {
	return C.GetColor(hexValue)
}

// Color fade-in or fade-out, alpha goes from 0.0 to 1.0
pub fn fade(color Color, alpha f32) Color {
	return C.Fade(color, alpha)
}


