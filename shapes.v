module vraylib

// --------------------------------------------------------
//  Module: Shapes
// --------------------------------------------------------
// Shape Drawing Functions
// Basic shapes drawing functions
[inline]
pub fn draw_pixel(posX int, posY int, color C.Color) {
	C.DrawPixel(posX, posY, color)
}

[inline]
pub fn draw_pixel_v(position C.Vector2, color C.Color) {
	C.DrawPixelV(position, color)
}

[inline]
pub fn draw_line(startPosX int, startPosY int, endPosX int, endPosY int, color C.Color) {
	C.DrawLine(startPosX, startPosY, endPosX, endPosY, color)
}

[inline]
pub fn draw_line_v(startPos C.Vector2, endPos C.Vector2, color C.Color) {
	C.DrawLineV(startPos, endPos, color)
}

[inline]
pub fn draw_line_ex(startPos C.Vector2, endPos C.Vector2, thick f32, color C.Color) {
	C.DrawLineEx(startPos, endPos, thick, color)
}

[inline]
pub fn draw_line_bezier(startPos C.Vector2, endPos C.Vector2, thick f32, color C.Color) {
	C.DrawLineBezier(startPos, endPos, thick, color)
}

[inline]
pub fn draw_line_strip(points &C.Vector2, numPoints int, color C.Color) {
	C.DrawLineStrip(points, numPoints, color)
}

[inline]
pub fn draw_circle(centerX int, centerY int, radius f32, color C.Color) {
	C.DrawCircle(centerX, centerY, radius, color)
}

[inline]
pub fn draw_circle_sector(center C.Vector2, radius f32, startAngle int, endAngle int, segments int, color C.Color) {
	C.DrawCircleSector(center, radius, startAngle, endAngle, segments, color)
}

[inline]
pub fn draw_circle_sector_lines(center C.Vector2, radius f32, startAngle int, endAngle int, segments int, color C.Color) {
	C.DrawCircleSectorLines(center, radius, startAngle, endAngle, segments, color)
}

[inline]
pub fn draw_circle_gradient(centerX int, centerY int, radius f32, color1 C.Color, color2 C.Color) {
	C.DrawCircleGradient(centerX, centerY, radius, color1, color2)
}

[inline]
pub fn draw_circle_v(center C.Vector2, radius f32, color C.Color) {
	C.DrawCircleV(center, radius, color)
}

[inline]
pub fn draw_circle_lines(centerX int, centerY int, radius f32, color C.Color) {
	C.DrawCircleLines(centerX, centerY, radius, color)
}

[inline]
pub fn draw_ring(center C.Vector2, innerRadius f32, outerRadius f32, startAngle int, endAngle int, segments int, color C.Color) {
	C.DrawRing(center, innerRadius, outerRadius, startAngle, endAngle, segments, color)
}

[inline]
pub fn draw_ring_lines(center C.Vector2, innerRadius f32, outerRadius f32, startAngle int, endAngle int, segments int, color C.Color) {
	C.DrawRingLines(center, innerRadius, outerRadius, startAngle, endAngle, segments,
		color)
}

[inline]
pub fn draw_rectangle(posX int, posY int, width int, height int, color C.Color) {
	C.DrawRectangle(posX, posY, width, height, color)
}

[inline]
pub fn draw_rectangle_v(position C.Vector2, size C.Vector2, color C.Color) {
	C.DrawRectangleV(position, size, color)
}

[inline]
pub fn draw_rectangle_rec(rec Rectangle, color C.Color) {
	C.DrawRectangleRec(rec, color)
}

[inline]
pub fn draw_rectangle_pro(rec Rectangle, origin C.Vector2, rotation f32, color C.Color) {
	C.DrawRectanglePro(rec, origin, rotation, color)
}

[inline]
pub fn draw_rectangle_gradient_v(posX int, posY int, width int, height int, color1 C.Color, color2 C.Color) {
	C.DrawRectangleGradientV(posX, posY, width, height, color1, color2)
}

[inline]
pub fn draw_rectangle_gradient_h(posX int, posY int, width int, height int, color1 C.Color, color2 C.Color) {
	C.DrawRectangleGradientH(posX, posY, width, height, color1, color2)
}

[inline]
pub fn draw_rectangle_gradient_ex(rec Rectangle, col1 C.Color, col2 C.Color, col3 C.Color, col4 C.Color) {
	C.DrawRectangleGradientEx(rec, col1, col2, col3, col4)
}

[inline]
pub fn draw_rectangle_lines(posX int, posY int, width int, height int, color C.Color) {
	C.DrawRectangleLines(posX, posY, width, height, color)
}

[inline]
pub fn draw_rectangle_lines_ex(rec Rectangle, lineThick int, color C.Color) {
	C.DrawRectangleLinesEx(rec, lineThick, color)
}

[inline]
pub fn draw_rectangle_rounded(rec Rectangle, roundness f32, segments int, color C.Color) {
	C.DrawRectangleRounded(rec, roundness, segments, color)
}

[inline]
pub fn draw_rectangle_rounded_lines(rec Rectangle, roundness f32, segments int, lineThick int, color C.Color) {
	C.DrawRectangleRoundedLines(rec, roundness, segments, lineThick, color)
}

[inline]
pub fn draw_triangle(v1 C.Vector2, v2 C.Vector2, v3 C.Vector2, color C.Color) {
	C.DrawTriangle(v1, v2, v3, color)
}

[inline]
pub fn draw_triangle_lines(v1 C.Vector2, v2 C.Vector2, v3 C.Vector2, color C.Color) {
	C.DrawTriangleLines(v1, v2, v3, color)
}

[inline]
pub fn draw_triangle_fan(points &C.Vector2, numPoints int, color C.Color) {
	C.DrawTriangleFan(points, numPoints, color)
}

[inline]
pub fn draw_poly(center C.Vector2, sides int, radius f32, rotation f32, color C.Color) {
	C.DrawPoly(center, sides, radius, rotation, color)
}

[inline]
pub fn set_shapes_texture(texture C.Texture2D, source C.Rectangle) {
	C.SetShapesTexture(texture, source)
}

// Basic Shapes Collision Detection Functions
[inline]
pub fn check_collision_recs(rec1 C.Rectangle, rec2 C.Rectangle) bool {
	return C.CheckCollisionRecs(rec1, rec2)
}

[inline]
pub fn check_collision_circles(center1 C.Vector2, radius1 f32, center2 C.Vector2, radius2 f32) bool {
	return C.CheckCollisionCircles(center1, radius1, center2, radius2)
}

[inline]
pub fn check_collision_circle_rec(center C.Vector2, radius f32, rec Rectangle) bool {
	return C.CheckCollisionCircleRec(center, radius, rec)
}

[inline]
pub fn get_collision_rec(rec1 Rectangle, rec2 Rectangle) Rectangle {
	return C.GetCollisionRec(rec1, rec2)
}

[inline]
pub fn check_collision_point_rec(point C.Vector2, rec Rectangle) bool {
	return C.CheckCollisionPointRec(point, rec)
}

[inline]
pub fn check_collision_point_circle(point C.Vector2, center C.Vector2, radius f32) bool {
	return C.CheckCollisionPointCircle(point, center, radius)
}

[inline]
pub fn check_collision_point_triangle(point Vector2, p1 Vector2, p2 Vector2, p3 Vector2) bool {
	return C.CheckCollisionPointTriangle(point, p1, p2, p3)
}
