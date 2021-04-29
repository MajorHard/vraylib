module main

import os
import waotzi.vraylib

const (
	screen_width  = 800
	screen_height = 450
)

fn main() {
	vraylib.init_window(screen_width, screen_height, 'vraylib [core] example - basic window')
	vraylib.set_target_fps(60)

	mut suzanne := vraylib.load_model(os.resource_abs_path('resources/Suzanne.gltf'))
	suzanne_albeido := vraylib.load_texture(os.resource_abs_path('resources/Suzanne_BaseColor.png'))
	base_materials := suzanne.materials[0].maps[vraylib.diffuse]
	suzanne.materials[0].maps[vraylib.diffuse] = MaterialMap{
		texture: suzanne_albeido
		color: base_materials.color
		value: base_materials.value
	}

	camera := C.Camera3D{
		position: C.Vector3{
			x: 50
			y: 50
			z: 50
		}
		target: C.Vector3{
			x: 0
			y: 10
			z: 0
		}
		up: C.Vector3{
			x: 0
			y: 1
			z: 0
		}
		fovy: 45
		@type: vraylib.camera_perspective
	}

	vraylib.set_camera_mode(camera, vraylib.camera_free_mode)

	for {
		if vraylib.window_should_close() {
			break
		}
		{
			vraylib.begin_drawing()

			vraylib.clear_background(vraylib.raywhite)
			{
				vraylib.begin_mode_3d(camera)

				vraylib.draw_grid(20, 10)
				vraylib.draw_model(suzanne, C.Vector3{ x: 0, y: 0, z: 0 }, 10, vraylib.lightgray)
				vraylib.end_mode_3d()
			}
			vraylib.draw_text('Hello Suzanne', 20, 20, 20, vraylib.lightgray)
			vraylib.end_drawing()
		}
	}
	vraylib.unload_model(suzanne)
	vraylib.unload_texture(suzanne_albeido)
	vraylib.close_window()
}
