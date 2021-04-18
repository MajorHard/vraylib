module vraylib

//------------------------------------------------------------------------------------
// Camera System Functions (Module: camera)
//------------------------------------------------------------------------------------
pub const (
	camera_custom_mode       = 0
	camera_free_mode         = 1
	camera_orbital_mode      = 2
	camera_first_person_mode = 3
	camera_third_person_mode = 4
)

pub const (
	camera_perspective  = 0
	camera_orthographic = 1
)

// Set camera mode (multiple camera modes available)
[inline]
pub fn set_camera_mode(camera C.Camera3D, mode int) {
	C.SetCameraMode(camera, mode)
}

// Update camera position for selected mode
[inline]
pub fn update_camera(camera &C.Camera) {
	C.UpdateCamera(camera)
}

// Set camera pan key to combine with mouse movement (free camera)
[inline]
pub fn set_camera_pan_control(panKey int) {
	C.SetCameraPanControl(panKey)
}

// Set camera alt key to combine with mouse movement (free camera)
[inline]
pub fn set_camera_alt_control(altKey int) {
	C.SetCameraAltControl(altKey)
}

// Set camera smooth zoom key to combine with mouse (free camera)
[inline]
pub fn set_camera_smooth_zoom_control(szKey int) {
	C.SetCameraSmoothZoomControl(szKey)
}

// Set camera move controls (1st person and 3rd person cameras)
[inline]
pub fn set_camera_move_controls(frontKey int, backKey int, rightKey int, leftKey int, upKey int, downKey int) {
	C.SetCameraMoveControls(frontKey, backKey, rightKey, leftKey, upKey, downKey)
}
