module vraylib

#flag linux -lraylib -lGL -lm -lpthread -ldl -lrt -lX11
#include "raylib.h"
#include "raymath.h"

pub struct C.Matrix2x2 {
pub mut:
 m00 f32
 m01 f32
 m10 f32
 m11 f32
}

pub struct C.Vector2 {
pub mut:
	x f32
	y f32
}

type Vector2 = C.Vector2

pub struct C.Vector3 {
pub mut:
	x f32
	y f32
	z f32
}

type Vector3 = C.Vector3

pub struct C.Vector4 {
pub mut:
	x f32
	y f32
	z f32
	w f32
}

type Vector4 = C.Vector4

type Quaternion = C.Vector4

pub struct C.Matrix {
pub mut:
	m0  f32
	m1  f32
	m2  f32
	m3  f32
	m4  f32
	m5  f32
	m6  f32
	m7  f32
	m8  f32
	m9  f32
	m10 f32
	m11 f32
	m12 f32
	m13 f32
	m14 f32
	m15 f32
}

type Matrix = C.Matrix

pub struct C.Image {
pub mut:
	data    voidptr
	width   int
	height  int
	mipmaps int
	format  int
}

type Image = C.Image

pub struct C.Rectangle {
pub mut:
	x      f32
	y      f32
	width  f32
	height f32
}

type Rectangle = C.Rectangle

[typedef]
pub struct C.Texture2D {
pub mut:
	id      u32
	width   int
	height  int
	mipmaps int
	format  int
}

type Texture2D = C.Texture2D

type Texture = C.Texture2D

type TextureCubemap = C.Texture2D

[typedef]
pub struct C.RenderTexture2D {
	id            u32
	texture       C.Texture2D
	depth         C.Texture2D
	depth_texture bool
}

pub struct C.Color {
pub mut:
	r byte
	g byte
	b byte
	a byte
}

pub type Color = C.Color

[inline]
pub fn (c Color) str() string {
	return 'Color { r: $c.r, g: $c.g, b: $c.b, a: $c.a }'
}

pub struct C.CharInfo {
pub mut:
	value     int
	offset_x  int
	offset_y  int
	advance_x int
	image     Image
}

type CharInfo = C.CharInfo

pub struct C.Font {
pub mut:
	base_size   int
	chars_count int
	texture     Texture2D
	recs        &Rectangle
	chars       &CharInfo
}

type Font = C.Font

pub struct C.Camera2D {
pub mut:
	offset   Vector2
	target   Vector2
	rotation f32
	zoom     f32
}

type Camera2D = C.Camera2D

pub struct C.Camera3D {
pub mut:
	position Vector3
	target   Vector3
	up       Vector3
	fovy     f32
	@type    int
}

type Camera3D = C.Camera3D

type Camera = C.Camera3D

// Ray type (useful for raycast)
pub struct C.Ray {
	position  Vector3
	direction Vector3
}

type Ray = C.Ray

pub struct C.RayHitInfo {
	hit      bool
	distance f32
	position Vector3
	normal   Vector3
}

type RayHitInfo = C.RayHitInfo

pub struct C.BoundingBox {
	min Vector3
	max Vector3
}

type BoundingBox = C.BoundingBox

// N-Patch layout info
pub struct C.NPatchInfo {
	source_rec Rectangle
	left       int
	top        int
	right      int
	bottom     int
	@type      int
}

type PRectangle = &C.Rectangle
