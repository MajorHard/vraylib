module vraylib

pub fn draw_fps(posX, posY int) {
	C.DrawFPS(posX, posY)
}

// Drawing-related functions
pub fn clear_background(c Color) {
	C.ClearBackground(c)
}

pub fn begin_drawing() {
	C.BeginDrawing()
}

pub fn end_drawing() {
	C.EndDrawing()
}

// Shape Drawing Functions
// Basic shapes drawing functions
pub fn draw_pixel(posX, posY int, color Color) {
	C.DrawPixel(posX, posY, color)
}

pub fn draw_pixel_v(position Vector2, color Color) {
	C.DrawPixelV(position, color)
}

pub fn draw_line(startPosX, startPosY, endPosX, endPosY int, color Color) {
	C.DrawLine(startPosX, startPosY, endPosX, endPosY, color)
}

pub fn draw_line_v(startPos, endPos Vector2, color Color) {
	C.DrawLineV(startPos, endPos, color)
}

pub fn draw_line_ex(startPos, endPos Vector2, thick f32, color Color) {
	C.DrawLineEx(startPos, endPos, thick, color)
}

pub fn draw_line_bezier(startPos, endPos Vector2, thick f32, color Color) {
	C.DrawLineBezier(startPos, endPos, thick, color)
}

pub fn draw_line_strip(points &Vector2, numPoints int, color Color) {
	C.DrawLineStrip(points, numPoints, color)
}

pub fn draw_circle(centerX, centerY int, radius f32, color Color) {
	C.DrawCircle(centerX, centerY, radius, color)
}

pub fn draw_circle_sector(center Vector2, radius f32, startAngle, endAngle, segments int, color Color) {
	C.DrawCircleSector(center, radius, startAngle, endAngle, segments, color)
}

pub fn draw_circle_sector_lines(center Vector2, radius f32, startAngle, endAngle, segments int, color Color) {
	C.DrawCircleSectorLines(center, radius, startAngle, endAngle, segments, color)
}

pub fn draw_circle_gradient(centerX, centerY int, radius f32, color1, color2 Color) {
	C.DrawCircleGradient(centerX, centerY, radius, color1, color2)
}

pub fn draw_circle_v(center Vector2, radius f32, color Color) {
	C.DrawCircleV(center, radius, color)
}

pub fn draw_circle_lines(centerX, centerY int, radius f32, color Color) {
	C.DrawCircleLines(centerX, centerY, radius, color)
}

pub fn draw_ring(center Vector2, innerRadius, outerRadius f32, startAngle, endAngle, segments int, color Color) {
	C.DrawRing(center, innerRadius, outerRadius, startAngle, endAngle, segments, color)
}

pub fn draw_ring_lines(center Vector2, innerRadius, outerRadius f32, startAngle, endAngle, segments int, color Color) {
	C.DrawRingLines(center, innerRadius, outerRadius, startAngle, endAngle, segments, color)
}

pub fn draw_rectangle(posX, posY, width, height int, color Color) {
	C.DrawRectangle(posX, posY, width, height, color)
}

pub fn draw_rectangle_v(position, size Vector2, color Color) {
	C.DrawRectangleV(position, size, color)
}

pub fn draw_rectangle_rec(rec Rectangle, color Color) {
	C.DrawRectangleRec(rec, color)
}

pub fn draw_rectangle_pro(rec Rectangle, origin Vector2, rotation f32, color Color) {
	C.DrawRectanglePro(rec, origin, rotation, color)
}

pub fn draw_rectangle_gradient_v(posX, posY, width, height int, color1, color2 Color) {
	C.DrawRectangleGradientV(posX, posY, width, height, color1, color2)
}

pub fn draw_rectangle_gradient_h(posX, posY, width, height int, color1, color2 Color) {
	C.DrawRectangleGradientH(posX, posY, width, height, color1, color2)
}

pub fn draw_rectangle_gradient_ex(rec Rectangle, col1, col2, col3, col4 Color) {
	C.DrawRectangleGradientEx(rec, col1, col2, col3, col4)
}

pub fn draw_rectangle_lines(posX, posY, width, height int, color Color) {
	C.DrawRectangleLines(posX, posY, width, height, color)
}

pub fn draw_rectangle_lines_ex(rec Rectangle, lineThick int, color Color) {
	C.DrawRectangleLinesEx(rec, lineThick, color)
}

pub fn draw_rectangle_rounded(rec Rectangle, roundness f32, segments int, color Color) {
	C.DrawRectangleRounded(rec, roundness, segments, color)
}

pub fn draw_rectangle_rounded_lines(rec Rectangle, roundness f32, segments, lineThick int, color Color) {
	C.DrawRectangleRoundedLines(rec, roundness, segments, lineThick, color)
}

pub fn draw_triangle(v1, v2, v3 Vector2, color Color) {
	C.DrawTriangle(v1, v2, v3, color)
}

pub fn draw_triangle_lines(v1, v2, v3 Vector2, color Color) {
	C.DrawTriangleLines(v1, v2, v3, color)
}

pub fn draw_triangle_fan(points &Vector2, numPoints int, color Color) {
	C.DrawTriangleFan(points, numPoints, color)
}

pub fn draw_poly(center Vector2, sides int, radius, rotation f32, color Color) {
	C.DrawPoly(center, sides, radius, rotation, color)
}

pub fn set_shapes_texture(texture Texture2D, source Rectangle) {
	C.SetShapesTexture(texture, source)
}
