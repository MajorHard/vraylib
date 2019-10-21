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
type TextureCubemap Texture2D

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


// Ray type (useful for raycast)
struct C.Ray {
    position Vector3
    direction Vector3
}
type Ray C.Ray

struct C.RayHitInfo {
    hit bool
    distance f32
    position Vector3
    normal Vector3
}
type RayHitInto C.RayHitInfo

struct C.BoundingBox {
    min Vector3
    max Vector3
}
type BoundingBox C.BoundingBox

// N-Patch layout info
struct C.NPatchInfo {
	sourceRec Rectangle
    left int
    top int
    right int
    bottom int
    @type int
}
type NPatchInfo C.NPatchInfo


