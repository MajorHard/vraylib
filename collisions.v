module vraylib

// Basic Shapes Collision Detection Functions
pub fn check_collision_recs(rec1, rec2 Rectangle) bool {
	return C.CheckCollisionRecs(rec1, rec2)
}

pub fn check_collision_circles(center1 Vector2, radius1 f32, center2 Vector2, radius2 f32) bool {
	return C.CheckCollisionCircles(center1, radius1, center2, radius2)
}

pub fn check_collision_circle_rec(center Vector2, radius f32, rec Rectangle) bool {
	return C.CheckCollisionCircleRec(center, radius, rec)
}


pub fn get_collision_rec(rec1, rec2 Rectangle) Rectangle {
	return C.GetCollisionRec(rec1, rec2)
}

pub fn check_collision_point_rec(point Vector2, rec Rectangle) bool {
	return C.CheckCollisionPointRec(point, rec)
}

pub fn check_collision_point_circle(point, center Vector2, radius f32) bool {
	return C.CheckCollisionPointCircle(point, center, radius)
}

pub fn check_collision_point_triangle(point, p1, p2, p3 Vector2) bool {
	return C.CheckCollisionPointTriangle(point, p1, p2, p3)
}
