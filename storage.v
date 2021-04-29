module vraylib

[inline]
pub fn open_url(url string) {
	C.OpenURL(url.str)
}
