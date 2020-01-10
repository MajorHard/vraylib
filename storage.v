module vraylib

// Persistent storage management

fn C.StorageSaveValue(position, value int)
fn C.StorageLoadValue(position int) int

fn C.OpenURL(url byteptr)

// Save integer value to storage file (to defined position)
pub fn storage_save_value(position, value int) {
	C.StorageSaveValue(position, value)
}

// Load integer value from storage file (from defined position)
pub fn storage_load_value(position int) int {
	return C.StorageLoadValue(position)
}

pub fn open_url(url string) {
	C.OpenURL(url.str)
}
