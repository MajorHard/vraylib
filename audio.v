module vraylib

// Wave type, defines audio wave data
pub struct C.Wave {
pub mut:
	sampleCount u32
	sampleRate  u32
	sampleSize  u32
	channels    u32
	data        voidptr
}

// Audio stream type
pub struct C.AudioStream {
pub mut:
	sampleRate u32
	sampleSize u32
	channels   u32
	buffer     rAudioBuffer
}

pub struct C.Sound {
pub mut:
	sampleCount u32
	stream      C.AudioStream
}

pub struct C.Music {
pub mut:
	ctxType     int
	ctxData     voidptr
	sampleCount u32
	loopCount   u32
	stream      C.AudioStream
}

// Audio device management functions
//
// Initialize audio device and context
[inline]
pub fn init_audio_device() {
	C.InitAudioDevice()
}

// Close the audio device and context (and music stream)
[inline]
pub fn close_audio_device() {
	C.CloseAudioDevice()
}

// Check if audio device is ready
[inline]
pub fn is_aduio_device_ready() bool {
	return C.IsAudioDeviceReady()
}

// Set master volume (listener)
[inline]
pub fn set_master_volume(volume f32) {
	C.SetMasterVolume(volume)
}

// Wave/Sound loading/unloading functions
//
// Load wave data from file
[inline]
pub fn load_wave(fileName string) C.Wave {
	return C.LoadWave(fileName.str)
}

// Load sound from file
[inline]
pub fn load_sound(fileName string) C.Sound {
	return C.LoadSound(fileName.str)
}

// Load sound from wave data
[inline]
pub fn load_sound_from_save(wave C.Wave) C.Sound {
	return C.LoadSoundFromWave(wave)
}

// Update sound buffer with new data
[inline]
pub fn update_sound(sound C.Sound, data voidptr, samplesCount int) {
	C.UpdateSound(sound, data, samplesCount)
}

// Unload wave data
[inline]
pub fn unload_wave(wave C.Wave) {
	C.UnloadWave(wave)
}

// Unload sound
[inline]
pub fn unload_sound(sound C.Sound) {
	C.UnloadSound(sound)
}

// Export wave data to file
[inline]
pub fn export_wave(wave C.Wave, fileName string) {
	C.ExportWave(wave, fileName.str)
}

// Export wave sample data to code (.h)
[inline]
pub fn export_wave_as_code(wave C.Wave, fileName string) {
	C.ExportWaveAsCode(wave, fileName.str)
}

// Wave/Sound management functions
//
// Play a sound
[inline]
pub fn play_sound(sound C.Sound) {
	C.PlaySound(sound)
}

// Pause a sound
[inline]
pub fn pause_sound(sound C.Sound) {
	C.PauseSound(sound)
}

// Resume a paused sound
[inline]
pub fn resume_sound(sound C.Sound) {
	C.ResumeSound(sound)
}

// Stop playing a sound
[inline]
pub fn stop_sound(sound C.Sound) {
	C.StopSound(sound)
}

// Check if a sound is currently playing
[inline]
pub fn is_sound_playing(sound C.Sound) bool {
	return C.IsSoundPlaying(sound)
}

// Set volume for a sound (1.0 is max level)
[inline]
pub fn set_sound_volume(sound C.Sound, volume f32) {
	C.SetSoundVolume(sound, volume)
}

// Set pitch for a sound (1.0 is base level)
[inline]
pub fn set_sound_pitch(sound C.Sound, pitch f32) {
	C.SetSoundPitch(sound, pitch)
}

// Convert wave data to desired format
[inline]
pub fn wave_format(wave &C.Wave, sampleRate int, sampleSize int, channels int) {
	C.WaveFormat(wave, sampleRate, sampleSize, channels)
}

// Copy a wave to a new wave
[inline]
pub fn wave_copy(wave C.Wave) C.Wave {
	return C.WaveCopy(wave)
}

// Crop a wave to defined samples range
[inline]
pub fn wave_crop(wave &C.Wave, initSample int, finalSample int) {
	C.WaveCrop(wave, initSample, finalSample)
}

// Music management functions
//
// Load music stream from file
[inline]
pub fn load_music_stream(fileName string) C.Music {
	return C.LoadMusicStream(fileName.str)
}

// Unload music stream
[inline]
pub fn unload_music_stream(music C.Music) {
	C.UnloadMusicStream(music)
}

// Start music playing
[inline]
pub fn play_music_stream(music C.Music) {
	C.PlayMusicStream(music)
}

// Updates buffers for music streaming
[inline]
pub fn update_music_stream(music C.Music) {
	C.UpdateMusicStream(music)
}

// Stop music playing
[inline]
pub fn stop_music_stream(music C.Music) {
	C.StopMusicStream(music)
}

// Pause music playing
[inline]
pub fn pause_music_stream(music C.Music) {
	C.PauseMusicStream(music)
}

// Resume playing paused music
[inline]
pub fn resume_music_stream(music C.Music) {
	C.ResumeMusicStream(music)
}

// Check if music is playing
[inline]
pub fn is_music_playing(music C.Music) bool {
	return C.IsMusicPlaying(music)
}

// Set volume for music (1.0 is max level)
[inline]
pub fn set_music_volume(music C.Music, volume f32) {
	C.SetMusicVolume(music, volume)
}

// Set pitch for a music (1.0 is base level)
[inline]
pub fn set_music_pitch(music C.Music, pitch f32) {
	C.SetMusicPitch(music, pitch)
}

// Get music time length (in seconds)
[inline]
pub fn get_music_time_length(music C.Music) f32 {
	return C.GetMusicTimeLength(music)
}

// Get current music time played (in seconds)
[inline]
pub fn get_music_time_played(music C.Music) f32 {
	return C.GetMusicTimePlayed(music)
}

// AudioStream management functions
//
// Init audio stream (to stream raw audio pcm data)
[inline]
pub fn init_audio_stream(sampleRate u32, sampleSize u32, channels u32) C.AudioStream {
	return C.InitAudioStream(sampleRate, sampleSize, channels)
}

// Update audio stream buffers with data
[inline]
pub fn update_audio_stream(stream C.AudioStream, data voidptr, samplesCount int) {
	C.UpdateAudioStream(stream, data, samplesCount)
}

// Close audio stream and free memory
[inline]
pub fn close_audio_stream(stream C.AudioStream) {
	C.CloseAudioStream(stream)
}

// Check if any audio stream buffers requires refill
// [inline] pub fn is_audio_buffer_processed(stream C.AudioStream) bool {
// 	return C.IsAudioStreamProcessed(stream)
// }
// Play audio stream
[inline]
pub fn play_audio_stream(stream C.AudioStream) {
	C.PlayAudioStream(stream)
}

// Pause audio stream
[inline]
pub fn pause_audio_stream(stream C.AudioStream) {
	C.PauseAudioStream(stream)
}

// Resume audio stream
[inline]
pub fn resume_audio_stream(stream C.AudioStream) {
	C.ResumeAudioStream(stream)
}

// Check if audio stream is playing
[inline]
pub fn is_audio_stream_playing(stream C.AudioStream) bool {
	return C.IsAudioStreamPlaying(stream)
}

// Stop audio stream
[inline]
pub fn stop_audio_stream(stream C.AudioStream) {
	C.StopAudioStream(stream)
}

// Set volume for audio stream (1.0 is max level)
[inline]
pub fn set_audio_stream_volume(stream C.AudioStream, volume f32) {
	C.SetAudioStreamVolume(stream, volume)
}

// Set pitch for audio stream (1.0 is base level)
[inline]
pub fn set_audio_stream_pitch(stream C.AudioStream, pitch f32) {
	C.SetAudioStreamPitch(stream, pitch)
}
