module vraylib

// Wave type, defines audio wave data
pub struct C.Wave {
pub mut:
	sampleCount u32
	sampleRate u32
	sampleSize u32
	channels u32
	data voidptr
}

// Audio stream type
pub struct C.AudioStream {
pub mut:
    sampleRate u32
    sampleSize u32
    channels u32
	buffer &C.rAudioBuffer
}

pub struct C.Sound {
pub mut:
    sampleCount u32
    stream AudioStream
}

pub struct C.Music {
pub mut:
    ctxType int
    ctxData voidptr
	sampleCount u32
	loopCount u32
	stream AudioStream
}

// Audio device management functions
//

// Initialize audio device and context
pub fn init_audio_device() {
	C.InitAudioDevice()
}

// Close the audio device and context (and music stream)
pub fn close_audio_device() {
	C.CloseAudioDevice()
}

// Check if audio device is ready
pub fn is_aduio_device_ready() bool {
	return C.IsAudioDeviceReady()
}

// Set master volume (listener)
pub fn set_master_volume(volume f32) {
	C.SetMasterVolume(volume)
}

// Wave/Sound loading/unloading functions
//


// Load wave data from file
pub fn load_wave(fileName string) Wave {
	return C.LoadWave(fileName.str)
}

// Load sound from file
pub fn load_sound(fileName string) Sound {
	return C.LoadSound(fileName.str)
}

// Load sound from wave data
pub fn load_sound_from_save(wave Wave) Sound {
	return C.LoadSoundFromWave(wave)
}

// Update sound buffer with new data
pub fn update_sound(sound Sound, data voidptr, samplesCount int) {
	C.UpdateSound(sound, data, samplesCount)
}

// Unload wave data
pub fn unload_wave(wave Wave) {
	C.UnloadWave(wave)
}

// Unload sound
pub fn unload_sound(sound Sound) {
	C.UnloadSound(sound)
}


// Export wave data to file
pub fn export_wave(wave Wave, fileName string) {
	C.ExportWave(wave, fileName.str)
}

// Export wave sample data to code (.h)
pub fn export_wave_as_code(wave Wave, fileName string) {
	C.ExportWaveAsCode(wave, fileName.str)
}


// Wave/Sound management functions
//

// Play a sound
pub fn play_sound(sound Sound) {
	C.PlaySound(sound)
}

// Pause a sound
pub fn pause_sound(sound Sound) {
	C.PauseSound(sound)
}

// Resume a paused sound
pub fn resume_sound(sound Sound) {
	C.ResumeSound(sound)
}

// Stop playing a sound
pub fn stop_sound(sound Sound) {
	C.StopSound(sound)
}

// Check if a sound is currently playing
pub fn is_sound_playing(sound Sound) bool {
	return C.IsSoundPlaying(sound)
}

// Set volume for a sound (1.0 is max level)
pub fn set_sound_volume(sound Sound, volume f32) {
	C.SetSoundVolume(sound, volume)
}

// Set pitch for a sound (1.0 is base level)
pub fn set_sound_pitch(sound Sound, pitch f32) {
	C.SetSoundPitch(sound, pitch)
}

// Convert wave data to desired format
pub fn wave_format(wave &Wave, sampleRate, sampleSize, channels int) {
	C.WaveFormat(wave, sampleRate, sampleSize, channels)
}

// Copy a wave to a new wave
pub fn wave_copy(wave Wave) Wave {
	return C.WaveCopy(wave)
}

// Crop a wave to defined samples range
pub fn wave_crop(wave &Wave, initSample int, finalSample int) {
	C.WaveCrop(wave, initSample, finalSample)
}

// Get samples data from wave as a floats array
pub fn get_wave_data(wave Wave) &f32 {
	return C.GetWaveData(wave)
}

// Music management functions
//

// Load music stream from file
pub fn load_music_stream(fileName string) Music {
	return C.LoadMusicStream(fileName.str)
}

// Unload music stream
pub fn unload_music_stream(music Music) {
	C.UnloadMusicStream(music)
}

// Start music playing
pub fn play_music_stream(music Music) {
	C.PlayMusicStream(music)
}

// Updates buffers for music streaming
pub fn update_music_stream(music Music) {
	C.UpdateMusicStream(music)
}

// Stop music playing
pub fn stop_music_stream(music Music) {
	C.StopMusicStream(music)
}

// Pause music playing
pub fn pause_music_stream(music Music) {
	C.PauseMusicStream(music)
}

// Resume playing paused music
pub fn resume_music_stream(music Music) {
	C.ResumeMusicStream(music)
}

// Check if music is playing
pub fn is_music_playing(music Music) bool {
	return C.IsMusicPlaying(music)
}

// Set volume for music (1.0 is max level)
pub fn set_music_volume(music Music, volume f32) {
	C.SetMusicVolume(music, volume)
}

// Set pitch for a music (1.0 is base level)
pub fn set_music_pitch(music Music, pitch f32) {
	C.SetMusicPitch(music,  pitch)
}

// Set music loop count (loop repeats)
pub fn set_music_loop_count(music Music, count int) {
	C.SetMusicLoopCount(music, count)
}

// Get music time length (in seconds)
pub fn get_music_time_length(music Music) f32 {
	return C.GetMusicTimeLength(music)
}

// Get current music time played (in seconds)
pub fn get_music_time_played(music Music) f32 {
	return C.GetMusicTimePlayed(music)
}

// AudioStream management functions
//

// Init audio stream (to stream raw audio pcm data)
pub fn init_audio_stream(sampleRate, sampleSize, channels u32) AudioStream {
	return C.InitAudioStream(sampleRate, sampleSize, channels)
}

// Update audio stream buffers with data
pub fn update_audio_stream(stream AudioStream, data voidptr, samplesCount int) {
	C.UpdateAudioStream(stream, data, samplesCount)
}

// Close audio stream and free memory
pub fn close_audio_stream(stream AudioStream) {
	C.CloseAudioStream(stream)
}

// Check if any audio stream buffers requires refill
// pub fn is_audio_buffer_processed(stream AudioStream) bool {
// 	return C.IsAudioStreamProcessed(stream)
// }

// Play audio stream
pub fn play_audio_stream(stream AudioStream) {
	C.PlayAudioStream(stream)
}

// Pause audio stream
pub fn pause_audio_stream(stream AudioStream) {
	C.PauseAudioStream(stream)
}

// Resume audio stream
pub fn resume_audio_stream(stream AudioStream) {
	C.ResumeAudioStream(stream)
}

// Check if audio stream is playing
pub fn is_audio_stream_playing(stream AudioStream) bool {
	return C.IsAudioStreamPlaying(stream)
}

// Stop audio stream
pub fn stop_audio_stream(stream AudioStream) {
	C.StopAudioStream(stream)
}

// Set volume for audio stream (1.0 is max level)
pub fn set_audio_stream_volume(stream AudioStream, volume f32) {
	C.SetAudioStreamVolume(stream, volume)
}

// Set pitch for audio stream (1.0 is base level)
pub fn set_audio_stream_pitch(stream AudioStream, pitch f32) {
	C.SetAudioStreamPitch(stream, pitch)
}
