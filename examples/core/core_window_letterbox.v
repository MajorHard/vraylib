import waotzi.vraylib

fn max(a f32, b f32) f32 {
	return if a > b { a } else { b }
}

fn min(a f32, b f32) f32 {
	return if a < b { a } else { b }
}

// Clamp Vector2 value with min and max and return a new vector2
// NOTE: Required for virtual mouse, to clamp inside virtual game size
fn clamp_value(value C.Vector2, min C.Vector2, max C.Vector2) C.Vector2 {
	mut result := value
	result.x = if result.x > max.x { max.x } else { result.x }
	result.x = if result.x < min.x { min.x } else { result.x }
	result.y = if result.y > max.y { max.y } else { result.y }
	result.y = if result.y < min.y { min.y } else { result.y }
	return result
}

const (
	window_width       = 800
	window_height      = 450
	game_screen_width  = 640
	game_screen_height = 480
)

fn main() {
	// Enable config flags for resizable window and vertical synchro
	vraylib.set_config_flags(vraylib.flag_window_resizable | vraylib.flag_vsync_hint)
	vraylib.init_window(window_width, window_height, 'raylib [core] example - window scale letterbox')
	vraylib.set_window_min_size(320, 240)
	// Render texture initialization, used to hold the rendering result so we can easily resize it

	target := vraylib.load_render_texture(game_screen_width, game_screen_height)
	vraylib.set_texture_filter(target.texture, vraylib.filter_bilinear) // Texture scale filter to use

	mut colors := []C.Color{}
	for i := 0; i < 10; i++ {
		colors << C.Color{byte(vraylib.get_random_value(100, 250)), byte(vraylib.get_random_value(50,
			150)), byte(vraylib.get_random_value(10, 100)), 255}
	}

	vraylib.set_target_fps(60)

	for {
		if vraylib.window_should_close() {
			break
		}
		{
			// Update
			//----------------------------------------------------------------------------------
			// Compute required framebuffer scaling
			scale := min(f32(vraylib.get_screen_width()) / game_screen_width, f32(vraylib.get_screen_height()) / game_screen_height)

			if vraylib.is_key_pressed(vraylib.key_space) {
				// Recalculate random colors for the bars
				for i := 0; i < 10; i++ {
					colors[i] = C.Color{byte(vraylib.get_random_value(100, 250)), byte(vraylib.get_random_value(50,
						150)), byte(vraylib.get_random_value(10, 100)), 255}
				}
			}
			// Update virtual mouse (clamped mouse value behind game screen)
			mouse := vraylib.get_mouse_position()
			mut virtual_mouse := C.Vector2{}
			virtual_mouse.x = (mouse.x - (vraylib.get_screen_width() - (game_screen_width * scale)) * .5) / scale
			virtual_mouse.y = (mouse.y - (vraylib.get_screen_height() - (game_screen_height * scale)) * .5) / scale
			virtual_mouse = clamp_value(virtual_mouse, C.Vector2{}, C.Vector2{game_screen_width, game_screen_height})

			// Apply the same transformation as the virtual mouse to the real mouse (i.e. to work with raygui)
			// vraylib.set_mouse_offset(int(-(vraylib.get_screen_width() - (game_screen_width*scale))*0.5), int(-(vraylib.get_screen_height() - (game_screen_height*scale))*0.5))
			// vraylib.set_mouse_scale(1/scale, 1/scale)
			//----------------------------------------------------------------------------------

			// Draw
			//----------------------------------------------------------------------------------
			vraylib.begin_drawing()
			{
				vraylib.clear_background(vraylib.black)
				// Draw everything in the render texture, note this will not be rendered on screen, yet
				vraylib.begin_texture_mode(target)
				{
					vraylib.clear_background(vraylib.raywhite)
					for i := 0; i < 10; i++ {
						vraylib.draw_rectangle(0, (game_screen_height / 10) * i, game_screen_width,
							game_screen_height / 10, colors[i])
					}

					vraylib.draw_text('If executed inside a window,\nyou can resize the window,\nand see the screen scaling!',
						10, 25, 20, vraylib.white)

					vraylib.draw_text('Default Mouse: [' + int(mouse.x).str() + ' , ' +
						int(mouse.y).str() + ']', 350, 25, 20, vraylib.green)
					vraylib.draw_text('Virtual Mouse: [' + int(virtual_mouse.x).str() + ' , ' +
						int(virtual_mouse.y).str() + ']', 350, 55, 20, vraylib.yellow)
				}
				vraylib.end_texture_mode()
				// Draw RenderTexture2D to window, properly scaled
				vraylib.draw_texture_pro(target.texture, C.Rectangle{0, 0, f32(target.texture.width), f32(-target.texture.height)},
					C.Rectangle{(vraylib.get_screen_width() - game_screen_width * scale) * .5, (vraylib.get_screen_height() - (game_screen_height * scale)) * 0.5, f32(game_screen_width) * scale, f32(game_screen_height) * scale},
					C.Vector2{}, 0.0, vraylib.white)
				vraylib.end_drawing()
			}
		}
	}
	// De-Initialization
	//--------------------------------------------------------------------------------------
	vraylib.unload_render_texture(target) // Unload render texture
	vraylib.close_window() // Close window and OpenGL context
	//--------------------------------------------------------------------------------------
}
