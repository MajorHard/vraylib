module vraylib

fn C.Vector2Subtract(v1 C.Vector2, v2 C.Vector2) C.Vector2

[inline]
pub fn vector2_subtract(v1 C.Vector2, v2 C.Vector2) C.Vector2 {
	return C.Vector2Subtract(v1, v2)
}


fn C.Vector2Add(v1 C.Vector2, v2 C.Vector2) C.Vector2

[inline]
pub fn vector2_add(v1 C.Vector2, v2 C.Vector2) C.Vector2 {
	return C.Vector2Add(v1, v2)
}
