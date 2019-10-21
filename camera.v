module vraylib

//------------------------------------------------------------------------------------
// Camera System Functions (Module: camera)
//------------------------------------------------------------------------------------
// Set camera mode (multiple camera modes available)
pub fn set_camera_mode(camera Camera3D, mode int) {
	C.SetCameraMode(camera, mode)
}

// Update camera position for selected mode
pub fn update_camera(camera &Camera3D) {
	C.UpdateCamera(camera)
}

// Set camera pan key to combine with mouse movement (free camera)
pub fn set_camera_pan_control(panKey int) {
	C.SetCameraPanControl(panKey)
}

// Set camera alt key to combine with mouse movement (free camera)
pub fn set_camera_alt_control(altKey int) {
	C.SetCameraAltControl(altKey)
}

// Set camera smooth zoom key to combine with mouse (free camera)
pub fn set_camera_smooth_zoom_control(szKey int) {
	C.SetCameraSmoothZoomControl(szKey)
}

// Set camera move controls (1st person and 3rd person cameras)
pub fn set_camera_move_controls(frontKey, backKey, rightKey, leftKey, upKey, downKey int) {
	C.SetCameraMoveControls(frontKey, backKey, rightKey, leftKey, upKey, downKey)
}

