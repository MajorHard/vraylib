module vraylib

pub struct C.Shader {
pub mut:
	id u32
	locs &u32
}

pub struct C.VrDeviceInfo {
pub mut:
	hResolution int
	vResolution int
	hScreenSize f32
	vScreenSize f32
	vScreenCenter f32
	eyeToScreenDistance f32
	lensSeparationDistance f32
	interpupillaryDistance f32
	lensDistortionValues [4]f32
	chromaAbCorrection [4]f32
}


const (
	albedo			= 0
	diffuse			= 0
	metalness		= 1
	normal			= 2
	roughness		= 4
	occlusion		= 5
	emission 		= 6
	height			= 7
	cubemap			= 8
	irradiance		= 9
	prefilter		= 10
	brdf			= 11
)

// // Shader loading/unloading functions
//

// Load chars array from text file
pub fn load_text(fileName string) string {
	return string(byteptr(fileName.str))
}

// Load shader from files and bind default locations
pub fn load_shader(vsFileName, fsFileName string) Shader {
	return C.LoadShader(vsFileName.str, fsFileName.str)
}

// Load shader from code strings and bind default locations
pub fn load_shader_code(vsCode string, fsCode string) Shader {
	return C.LoadShaderCode(vsCode.str, fsCode.str)
}

// Unload shader from GPU memory (VRAM)
pub fn unload_shader(shader Shader) {
	C.UnloadShader(shader)
}

// Get default shader
pub fn get_shader_default() Shader {
	return C.GetShaderDefault()
}

// Get default texture
pub fn get_texture_default() Texture2D {
	return C.GetTextureDefault()
}

// Shader configuration functions

// Get shader uniform location
pub fn get_shader_location(shader Shader, uniformName string) int {
	return C.GetShaderLocation(shader, uniformName.str)
}

// Set shader uniform value
pub fn set_shader_value(shader Shader, uniformLoc int, value voidptr,  uniformType int) {
	C.SetShaderValue(shader, uniformLoc, value, uniformType)
}

// Set shader uniform value vector
pub fn set_shader_value_v(shader Shader, uniformLoc int, value voidptr, uniformType, count int) {
	C.SetShaderValueV(shader, uniformLoc, value, uniformType, count)
}

// Set shader uniform value (matrix 4x4)
pub fn set_shader_value_matrix(shader Shader, uniformLoc int, mat Matrix) {
	C.SetShaderValueMatrix(shader, uniformLoc, mat)
}

// Set shader uniform value for texture
pub fn set_shader_value_texture(shader Shader, uniformLoc int, texture Texture2D) {
	C.SetShaderValueTexture(shader, uniformLoc, texture)
}

// Set a custom projection matrix (replaces internal projection matrix)
pub fn set_matrix_projection(proj Matrix) {
	C.SetMatrixProjection(proj)
}

// Set a custom modelview matrix (replaces internal modelview matrix)
pub fn set_matrix_modelview(view Matrix) {
	C.SetMatrixModelview(view)
}

// Get internal modelview matrix
pub fn get_matrix_model_view() Matrix {
	return C.GetMatrixModelview()
}


// Shading begin/end functions
//

// Begin custom shader drawing
pub fn begin_shader_mode(shader Shader) {
	C.BeginShaderMode(shader)
}

// End custom shader drawing (use default shader)
pub fn end_shader_model() {
	C.EndShaderMode()
}

// Begin blending mode (alpha, additive, multiplied)
pub fn begin_blend_mode(mode int) {
	C.BeginBlendMode(mode)
}

// End blending mode (reset to default: alpha blending)
pub fn end_blend_mode() {
	C.EndBlendMode()
}

// Begin scissor mode (define screen area for following drawing)
pub fn begin_scissor_mode(x, y, width, height int) {
	C.BeginScissorMode(x, y, width, height)
}

// End scissor mode
pub fn end_scissor_mode() {
	C.EndScissorMode()
}

// VR control functions
//

// Init VR simulator for selected device parameters
pub fn init_vr_simulator() {
	C.InitVrSimulator()
}

// Close VR simulator for current device
pub fn close_vr_simulator() {
	C.CloseVrSimulator()
}

// Update VR tracking (position and orientation) and camera
pub fn update_vr_tracking(camera &Camera3D) {
	C.UpdateVrTracking(camera)
}

// Set stereo rendering configuration parameters
pub fn set_vr_configuration(info VrDeviceInfo, distortion Shader) {
	C.SetVrConfiguration(info, distortion)
}

// Detect if VR simulator is ready
pub fn is_vr_simulator_ready() bool {
	return C.IsVrSimulatorReady()
}

// Enable/Disable VR experience
pub fn toggle_vr_mode() {
	C.ToggleVrMode()
}

// Begin VR simulator stereo rendering
pub fn begin_vr_drawing() {
	C.BeginVrDrawing()
}

// End VR simulator stereo rendering
pub fn end_vr_drawing() {
	C.EndVrDrawing()
}
