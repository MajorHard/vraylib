module vraylib

pub struct C.Shader {
pub mut:
	id   u32
	locs &u32
}

pub struct C.VrDeviceInfo {
pub mut:
	hResolution            int
	vResolution            int
	hScreenSize            f32
	vScreenSize            f32
	vScreenCenter          f32
	eyeToScreenDistance    f32
	lensSeparationDistance f32
	interpupillaryDistance f32
	lensDistortionValues   [4]f32
	chromaAbCorrection     [4]f32
}

pub const (
	albedo     = 0
	diffuse    = 0
	metalness  = 1
	normal     = 2
	roughness  = 4
	occlusion  = 5
	emission   = 6
	height     = 7
	cubemap    = 8
	irradiance = 9
	prefilter  = 10
	brdf       = 11
)

// // Shader loading/unloading functions
//
// Load chars array from text file
[inline]
pub fn load_text(fileName string) string {
	return byteptr(fileName.str).str()
}

// Load shader from files and bind default locations
[inline]
pub fn load_shader(vsFileName string, fsFileName string) C.Shader {
	return C.LoadShader(vsFileName.str, fsFileName.str)
}

// Load shader from code strings and bind default locations
[inline]
pub fn load_shader_code(vsCode string, fsCode string) C.Shader {
	return C.LoadShaderCode(vsCode.str, fsCode.str)
}

// Unload shader from GPU memory (VRAM)
[inline]
pub fn unload_shader(shader C.Shader) {
	C.UnloadShader(shader)
}

// Get default shader
[inline]
pub fn get_shader_default() C.Shader {
	return C.GetShaderDefault()
}

// Get default texture
[inline]
pub fn get_texture_default() C.Texture2D {
	return C.GetTextureDefault()
}

// Shader configuration functions
// Get shader uniform location
[inline]
pub fn get_shader_location(shader C.Shader, uniformName string) int {
	return C.GetShaderLocation(shader, uniformName.str)
}

// Set shader uniform value
[inline]
pub fn set_shader_value(shader C.Shader, uniformLoc int, value voidptr, uniformType int) {
	C.SetShaderValue(shader, uniformLoc, value, uniformType)
}

// Set shader uniform value vector
[inline]
pub fn set_shader_value_v(shader C.Shader, uniformLoc int, value voidptr, uniformType int, count int) {
	C.SetShaderValueV(shader, uniformLoc, value, uniformType, count)
}

// Set shader uniform value (matrix 4x4)
[inline]
pub fn set_shader_value_matrix(shader C.Shader, uniformLoc int, mat C.Matrix) {
	C.SetShaderValueMatrix(shader, uniformLoc, mat)
}

// Set shader uniform value for texture
[inline]
pub fn set_shader_value_texture(shader C.Shader, uniformLoc int, texture C.Texture2D) {
	C.SetShaderValueTexture(shader, uniformLoc, texture)
}

// Set a custom projection matrix (replaces internal projection matrix)
[inline]
pub fn set_matrix_projection(proj C.Matrix) {
	C.SetMatrixProjection(proj)
}

// Set a custom modelview matrix (replaces internal modelview matrix)
[inline]
pub fn set_matrix_modelview(view C.Matrix) {
	C.SetMatrixModelview(view)
}

// Get internal modelview matrix
[inline]
pub fn get_matrix_model_view() C.Matrix {
	return C.GetMatrixModelview()
}

// Shading begin/end functions
//
// Begin custom shader drawing
[inline]
pub fn begin_shader_mode(shader C.Shader) {
	C.BeginShaderMode(shader)
}

// End custom shader drawing (use default shader)
[inline]
pub fn end_shader_model() {
	C.EndShaderMode()
}

// Begin blending mode (alpha, additive, multiplied)
[inline]
pub fn begin_blend_mode(mode int) {
	C.BeginBlendMode(mode)
}

// End blending mode (reset to default: alpha blending)
[inline]
pub fn end_blend_mode() {
	C.EndBlendMode()
}

// Begin scissor mode (define screen area for following drawing)
[inline]
pub fn begin_scissor_mode(x int, y int, width int, height int) {
	C.BeginScissorMode(x, y, width, height)
}

// End scissor mode
[inline]
pub fn end_scissor_mode() {
	C.EndScissorMode()
}

// VR control functions
//
// Init VR simulator for selected device parameters
[inline]
pub fn init_vr_simulator() {
	C.InitVrSimulator()
}

// Close VR simulator for current device
[inline]
pub fn close_vr_simulator() {
	C.CloseVrSimulator()
}

// Update VR tracking (position and orientation) and camera
[inline]
pub fn update_vr_tracking(camera &C.Camera) {
	C.UpdateVrTracking(camera)
}

// Set stereo rendering configuration parameters
[inline]
pub fn set_vr_configuration(info C.VrDeviceInfo, distortion C.Shader) {
	C.SetVrConfiguration(info, distortion)
}

// Detect if VR simulator is ready
[inline]
pub fn is_vr_simulator_ready() bool {
	return C.IsVrSimulatorReady()
}

// Enable/Disable VR experience
[inline]
pub fn toggle_vr_mode() {
	C.ToggleVrMode()
}

// Begin VR simulator stereo rendering
[inline]
pub fn begin_vr_drawing() {
	C.BeginVrDrawing()
}

// End VR simulator stereo rendering
[inline]
pub fn end_vr_drawing() {
	C.EndVrDrawing()
}
