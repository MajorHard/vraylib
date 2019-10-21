module vraylib
#flag linux -lraylib -lGL -lm -lpthread -ldl -lrt -lX11
#include "raylib.h"

struct C.Vector2 {
pub mut:
	x f32
	y f32
}

struct C.Vector3 {
pub mut:
	x f32
	y f32
	z f32

}

struct C.Vector4 {
pub mut:
	x f32
	y f32
	z f32
	w f32
}

type Quaternion C.Vector4

struct C.Matrix {
pub mut:
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
pub mut:
	data voidptr
	width int
	height int
	mipmaps int
	format int
}

struct C.Rectangle {
pub mut:
	x f32
	y f32
	width f32
	height f32

}

struct C.Texture2D {
pub mut:
	id u32
	width int
	height int
	mipmaps int
	format int
}
type Texture Texture2D

struct C.RenderTexture2D {
	id u32
	texture Texture2D
	depth Texture2D
	depthTexture bool
}

struct C.Color {
pub mut:
	r byte
	g byte
	b byte
	a byte
}

struct C.CharInfo {
pub mut:
	value int
	offsetX int
	offsetY int
	advanceX int
	image Image
}

struct C.Font {
pub mut:
	baseSize int
	charsCount int
	texture Texture2D
	recs &Rectangle
	chars &CharInfo
}

struct C.Camera2D {
pub mut:
    offset    Vector2
    target    Vector2
    rotation  f32
    zoom      f32
}

struct C.Camera3D {
pub:
mut:
  position C.Vector3
  target C.Vector3
  up  C.Vector3
  fovy f32
  @type int
}

enum GamepadPlayer {
	player1 player2 player3 player4
}

enum GamepadButton {
	unknown

    // This is normally [A,B,X,Y]/[Circle,Triangle,Square,Cross]
    // No support for 6 button controllers though..
    left_face_up
    left_face_right
    left_face_down
    left_face_left

    // This is normally a DPAD
    right_face_up
    right_face_right
    right_face_down
    right_face_left

    // Triggers
    left_trigger_1
    left_trigger_2
    right_trigger_1
    right_trigger_2

    // These are buttons in the center of the gamepad
    middle_left     //PS3 Select
    middle          //PS Button/XBOX Button
    middle_right    //PS3 Start

    // These are the joystick press in buttons
    left_thumb
    right_thumb
}

enum GamepadAxis {
	// This is here just for error checking
    unknown

    // Left stick
    left_x
    left_y

    // Right stick
    right_x
    right_y

    // Pressure levels for the back triggers
    left_trigger      // [1..-1] (pressure-level)
    right_trigger      // [1..-1] (pressure-level)
}

