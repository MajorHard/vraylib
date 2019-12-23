module vraylib

fn C.IsGamepadAvailable(gamepad int) bool
fn C.IsGamepadName(gamepad int, name byteptr) bool
fn C.GetGamepadName(gamepad int) byteptr
fn C.IsGamepadButtonPressed(gamepad, button int) bool
fn C.IsGamepadButtonDown(gamepad, button int) bool
fn C.IsGamepadButtonReleased(gamepad, button int) bool
fn C.IsGamepadButtonUp(gamepad, button int) bool
fn C.GetGamepadButtonPressed() int
fn C.GetGamepadAxisCount(gamepad int) int
fn C.GetGamepadAxisMovement(gamepad, axis int) f32

enum GamepadPlayer {
	player1 player2 player3 player4
}

enum GamepadButton {
	unknown

    // This is normally [A,B,X,Y]/[Circle,Triangle,Square,Cross]
    // No support for 6 button controllers though..
    left_face_up
    left_face_right
    left_face_down
    left_face_left

    // This is normally a DPAD
    right_face_up
    right_face_right
    right_face_down
    right_face_left

    // Triggers
    left_trigger_1
    left_trigger_2
    right_trigger_1
    right_trigger_2

    // These are buttons in the center of the gamepad
    middle_left     //PS3 Select
    middle          //PS Button/XBOX Button
    middle_right    //PS3 Start

    // These are the joystick press in buttons
    left_thumb
    right_thumb
}

enum GamepadAxis {
	// This is here just for error checking
    unknown

    // Left stick
    left_x
    left_y

    // Right stick
    right_x
    right_y

    // Pressure levels for the back triggers
    left_trigger      // [1..-1] (pressure-level)
    right_trigger      // [1..-1] (pressure-level)
}


// Input-related functions: gamepads
//

// Detect if a gamepad is available
pub fn is_gamepad_available(gamepad int) bool {
	return C.IsGamepadAvailable(gamepad)
}

// Check gamepad name (if available)
pub fn is_gamepad_name(gamepad int, name string) bool {
	return C.IsGamepadName(gamepad, name.str)
}

// Return gamepad internal name id
pub fn get_gamepad_name(gamepad int) string {
	return string(byteptr(C.GetGamepadName(gamepad)))
}

// Detect if a gamepad button has been pressed once
pub fn is_gamepad_button_pressed(gamepad, button int) bool {
	return C.IsGamepadButtonPressed(gamepad, button)
}

// Detect if a gamepad button is being pressed
pub fn is_gamepad_button_down(gamepad, button int) bool {
	return C.IsGamepadButtonDown(gamepad, button)
}

// Detect if a gamepad button has been released once
pub fn is_gamepad_button_releaed(gamepad, button int) bool {
	return C.IsGamepadButtonReleased(gamepad, button)
}

// Detect if a gamepad button is NOT being pressed
pub fn is_gamepad_button_up(gamepad, button int) bool {
	return C.IsGamepadButtonUp(gamepad, button)
}

// Get the last gamepad button pressed
pub fn get_gamepad_button_pressed() int {
	return C.GetGamepadButtonPressed()
}

// Return gamepad axis count for a gamepad
pub fn get_gamepad_axis_count(gamepad int) int {
	return C.GetGamepadAxisCount(gamepad)
}

// Return axis movement value for a gamepad axis
pub fn get_gamepad_axis_movement(gamepad, axis int) f32 {
	return C.GetGamepadAxisMovement(gamepad, axis)
}

