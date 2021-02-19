module vraylib

// Input-related functions: key
// Key Constants
pub const (
	key_apostrophe    = 39
	key_comma         = 44
	key_minus         = 45
	key_period        = 46
	key_slash         = 47
	key_zero          = 48
	key_one           = 49
	key_two           = 50
	key_three         = 51
	key_four          = 52
	key_five          = 53
	key_six           = 54
	key_seven         = 55
	key_eight         = 56
	key_nine          = 57
	key_semicolon     = 59
	key_equal         = 61
	key_a             = 65
	key_b             = 66
	key_c             = 67
	key_d             = 68
	key_e             = 69
	key_f             = 70
	key_g             = 71
	key_h             = 72
	key_i             = 73
	key_j             = 74
	key_k             = 75
	key_l             = 76
	key_m             = 77
	key_n             = 78
	key_o             = 79
	key_p             = 80
	key_q             = 81
	key_r             = 82
	key_s             = 83
	key_t             = 84
	key_u             = 85
	key_v             = 86
	key_w             = 87
	key_x             = 88
	key_y             = 89
	key_z             = 90
	// Function keys
	key_space         = 32
	key_escape        = 256
	key_enter         = 257
	key_tab           = 258
	key_backspace     = 259
	key_insert        = 260
	key_delete        = 261
	key_right         = 262
	key_left          = 263
	key_down          = 264
	key_up            = 265
	key_page_up       = 266
	key_page_down     = 267
	key_home          = 268
	key_end           = 269
	key_caps_lock     = 280
	key_scroll_lock   = 281
	key_num_lock      = 282
	key_print_screen  = 283
	key_pause         = 284
	key_f1            = 290
	key_f2            = 291
	key_f3            = 292
	key_f4            = 293
	key_f5            = 294
	key_f6            = 295
	key_f7            = 296
	key_f8            = 297
	key_f9            = 298
	key_f10           = 299
	key_f11           = 300
	key_f12           = 301
	key_left_shift    = 340
	key_left_control  = 341
	key_left_alt      = 342
	key_left_super    = 343
	key_right_shift   = 344
	key_right_control = 345
	key_right_alt     = 346
	key_right_super   = 347
	key_kb_menu       = 348
	key_left_bracket  = 91
	key_backslash     = 92
	key_right_bracket = 93
	key_grave         = 96
	// Keypad keys
	key_kp_0          = 320
	key_kp_1          = 321
	key_kp_2          = 322
	key_kp_3          = 323
	key_kp_4          = 324
	key_kp_5          = 325
	key_kp_6          = 326
	key_kp_7          = 327
	key_kp_8          = 328
	key_kp_9          = 329
	key_kp_decimal    = 330
	key_kp_divide     = 331
	key_kp_multiply   = 332
	key_kp_subtract   = 333
	key_kp_add        = 334
	key_kp_enter      = 335
	key_kp_equal      = 336
	// Android Button
	key_back          = 4
	key_menu          = 82
	key_volume_up     = 24
	key_volume_down   = 25
)

[inline]
pub fn is_key_down(key int) bool {
	return C.IsKeyDown(key)
}

[inline]
pub fn is_key_pressed(key int) bool {
	return C.IsKeyPressed(key)
}

[inline]
pub fn is_key_released(key int) bool {
	return C.IsKeyReleased(key)
}

[inline]
pub fn is_key_up(key int) bool {
	return C.IsKeyUp(key)
}

[inline]
pub fn get_key_pressed() int {
	return C.GetKeyPressed()
}

[inline]
pub fn get_char_pressed() int {
	return C.GetCharPressed()
}

[inline]
pub fn set_exit_key(key int) {
	C.SetExitKey(key)
}
