module vraylib

// Misc. functions
pub fn set_config_flags(flags u32) {
	C.SetConfigFlags(flags)
}

pub fn set_trace_log_level(logType int) {
	C.SetTraceLogLevel(logType)
}

pub fn set_trace_log_exit(logType int) {
	C.SetTraceLogExit(logType)
}

pub fn trace_log(logType int, text string) {
	C.TraceLog(logType, text.str)
}

pub fn take_screenshot(filename string) {
	C.TakeScreenshot(filename.str)
}

pub fn get_random_value(min, max int) int {
	return C.GetRandomValue(min, max)
}

