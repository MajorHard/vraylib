module vraylib

// Persistent storage management

// Save integer value to storage file (to defined position)
[inline] pub fn storage_save_value(position, value int) {
	C.StorageSaveValue(position, value)
}

// Load integer value from storage file (from defined position)
[inline] pub fn storage_load_value(position int) int {
	return C.StorageLoadValue(position)
}

[inline] pub fn open_url(url string) {
	C.OpenURL(url.str)
}
