module vraylib

fn C.Vector2Subtract(v1 C.Vector2, v2 C.Vector2) C.Vector2
pub fn vector2_subtract(v1 C.Vector2, v2 C.Vector2) C.Vector2 {
	return C.Vector2Subtract(v1, v2)
}


fn C.Vector2Add(v1 C.Vector2, v2 C.Vector2) C.Vector2
pub fn vector2_add(v1 C.Vector2, v2 C.Vector2) C.Vector2 {
	return C.Vector2Add(v1, v2)
}


fn C.Vector2Length(v C.Vector2) C.Vector2
pub fn vector2_length(v C.Vector2) C.Vector2 {
	return C.Vector2Length(v)
}

fn C.Vector2LengthSqr(v C.Vector2) C.Vector2
pub fn vector2_length_sqr(v C.Vector2) C.Vector2 {
	return C.Vector2LengthSqr(v)
}

fn C.Vector2DotProduct(v1 C.Vector2, v2 C.Vector2) C.Vector2
pub fn vector2_dot_product(v1 C.Vector2, v2 C.Vector2) C.Vector2 {
	return C.Vector2DotProduct(v1, v2)
}

fn C.Vector2Distance(v1 C.Vector2, v2 C.Vector2) C.Vector2
pub fn vector2_distrance(v1 C.Vector2, v2 C.Vector2) C.Vector2 {
	return C.Vector2Distance(v1, v2)
}

fn C.Vector2Angle(v1 C.Vector2, v2 C.Vector2) C.Vector2
pub fn vector2_angle(v1 C.Vector2, v2 C.Vector2) C.Vector2 {
	return C.Vector2Angle(v1, v2)
}

fn C.Vector2Scale(v C.Vector2, scale f32) C.Vector2
pub fn vector2_scale(v C.Vector2, scale f32) C.Vector2 {
	return C.Vector2Scale(v, scale)
}
