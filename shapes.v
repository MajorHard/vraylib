module vraylib

// --------------------------------------------------------
//  Module: Shapes
// --------------------------------------------------------

// Shape Drawing Functions
// Basic shapes drawing functions
[inline] pub fn draw_pixel(posX, posY int, color Color) {
	C.DrawPixel(posX, posY, color)
}

[inline] pub fn draw_pixel_v(position Vector2, color Color) {
	C.DrawPixelV(position, color)
}

[inline] pub fn draw_line(startPosX, startPosY, endPosX, endPosY int, color Color) {
	C.DrawLine(startPosX, startPosY, endPosX, endPosY, color)
}

[inline] pub fn draw_line_v(startPos, endPos Vector2, color Color) {
	C.DrawLineV(startPos, endPos, color)
}

[inline] pub fn draw_line_ex(startPos, endPos Vector2, thick f32, color Color) {
	C.DrawLineEx(startPos, endPos, thick, color)
}

[inline] pub fn draw_line_bezier(startPos, endPos Vector2, thick f32, color Color) {
	C.DrawLineBezier(startPos, endPos, thick, color)
}

[inline] pub fn draw_line_strip(points &Vector2, numPoints int, color Color) {
	C.DrawLineStrip(points, numPoints, color)
}

[inline] pub fn draw_circle(centerX, centerY int, radius f32, color Color) {
	C.DrawCircle(centerX, centerY, radius, color)
}

[inline] pub fn draw_circle_sector(center Vector2, radius f32, startAngle, endAngle, segments int, color Color) {
	C.DrawCircleSector(center, radius, startAngle, endAngle, segments, color)
}

[inline] pub fn draw_circle_sector_lines(center Vector2, radius f32, startAngle, endAngle, segments int, color Color) {
	C.DrawCircleSectorLines(center, radius, startAngle, endAngle, segments, color)
}

[inline] pub fn draw_circle_gradient(centerX, centerY int, radius f32, color1, color2 Color) {
	C.DrawCircleGradient(centerX, centerY, radius, color1, color2)
}

[inline] pub fn draw_circle_v(center Vector2, radius f32, color Color) {
	C.DrawCircleV(center, radius, color)
}

[inline] pub fn draw_circle_lines(centerX, centerY int, radius f32, color Color) {
	C.DrawCircleLines(centerX, centerY, radius, color)
}

[inline] pub fn draw_ring(center Vector2, innerRadius, outerRadius f32, startAngle, endAngle, segments int, color Color) {
	C.DrawRing(center, innerRadius, outerRadius, startAngle, endAngle, segments, color)
}

[inline] pub fn draw_ring_lines(center Vector2, innerRadius, outerRadius f32, startAngle, endAngle, segments int, color Color) {
	C.DrawRingLines(center, innerRadius, outerRadius, startAngle, endAngle, segments, color)
}

[inline] pub fn draw_rectangle(posX, posY, width, height int, color Color) {
	C.DrawRectangle(posX, posY, width, height, color)
}

[inline] pub fn draw_rectangle_v(position, size Vector2, color Color) {
	C.DrawRectangleV(position, size, color)
}

[inline] pub fn draw_rectangle_rec(rec Rectangle, color Color) {
	C.DrawRectangleRec(rec, color)
}

[inline] pub fn draw_rectangle_pro(rec Rectangle, origin Vector2, rotation f32, color Color) {
	C.DrawRectanglePro(rec, origin, rotation, color)
}

[inline] pub fn draw_rectangle_gradient_v(posX, posY, width, height int, color1, color2 Color) {
	C.DrawRectangleGradientV(posX, posY, width, height, color1, color2)
}

[inline] pub fn draw_rectangle_gradient_h(posX, posY, width, height int, color1, color2 Color) {
	C.DrawRectangleGradientH(posX, posY, width, height, color1, color2)
}

[inline] pub fn draw_rectangle_gradient_ex(rec Rectangle, col1, col2, col3, col4 Color) {
	C.DrawRectangleGradientEx(rec, col1, col2, col3, col4)
}

[inline] pub fn draw_rectangle_lines(posX, posY, width, height int, color Color) {
	C.DrawRectangleLines(posX, posY, width, height, color)
}

[inline] pub fn draw_rectangle_lines_ex(rec Rectangle, lineThick int, color Color) {
	C.DrawRectangleLinesEx(rec, lineThick, color)
}

[inline] pub fn draw_rectangle_rounded(rec Rectangle, roundness f32, segments int, color Color) {
	C.DrawRectangleRounded(rec, roundness, segments, color)
}

[inline] pub fn draw_rectangle_rounded_lines(rec Rectangle, roundness f32, segments, lineThick int, color Color) {
	C.DrawRectangleRoundedLines(rec, roundness, segments, lineThick, color)
}

[inline] pub fn draw_triangle(v1, v2, v3 Vector2, color Color) {
	C.DrawTriangle(v1, v2, v3, color)
}

[inline] pub fn draw_triangle_lines(v1, v2, v3 Vector2, color Color) {
	C.DrawTriangleLines(v1, v2, v3, color)
}

[inline] pub fn draw_triangle_fan(points &Vector2, numPoints int, color Color) {
	C.DrawTriangleFan(points, numPoints, color)
}

[inline] pub fn draw_poly(center Vector2, sides int, radius, rotation f32, color Color) {
	C.DrawPoly(center, sides, radius, rotation, color)
}

[inline] pub fn set_shapes_texture(texture Texture2D, source Rectangle) {
	C.SetShapesTexture(texture, source)
}

// Basic Shapes Collision Detection Functions
[inline] pub fn check_collision_recs(rec1, rec2 Rectangle) bool {
	return C.CheckCollisionRecs(rec1, rec2)
}

[inline] pub fn check_collision_circles(center1 Vector2, radius1 f32, center2 Vector2, radius2 f32) bool {
	return C.CheckCollisionCircles(center1, radius1, center2, radius2)
}

[inline] pub fn check_collision_circle_rec(center Vector2, radius f32, rec Rectangle) bool {
	return C.CheckCollisionCircleRec(center, radius, rec)
}


[inline] pub fn get_collision_rec(rec1, rec2 Rectangle) Rectangle {
	return C.GetCollisionRec(rec1, rec2)
}

[inline] pub fn check_collision_point_rec(point Vector2, rec Rectangle) bool {
	return C.CheckCollisionPointRec(point, rec)
}

[inline] pub fn check_collision_point_circle(point, center Vector2, radius f32) bool {
	return C.CheckCollisionPointCircle(point, center, radius)
}

[inline] pub fn check_collision_point_triangle(point, p1, p2, p3 Vector2) bool {
	return C.CheckCollisionPointTriangle(point, p1, p2, p3)
}

