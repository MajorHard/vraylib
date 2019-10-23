module main

import MajorHard.vraylib

const (
	screenWidth = 800
	screenHeight = 450
)


fn main() {
	vraylib.init_window(screenWidth, screenHeight, "vraylib [core] example - basic window")
	defer { vraylib.close_window() }
	vraylib.set_target_fps(60)

	mut suzanne := vraylib.load_model("resources/Suzanne.gltf")
	suzanne_albeido := vraylib.load_texture("resources/Suzanne_BaseColor.png")
	base_materials := suzanne.materials[0].maps[vraylib.diffuse]
	suzanne.materials[0].maps[vraylib.diffuse] = MaterialMap{
		texture: suzanne_albeido,
		color: base_materials.color,
		value: base_materials.value
	}
	defer { vraylib.unload_model(suzanne) }
	defer { vraylib.unload_texture(suzanne_albeido) }


	camera := Camera3D{
		position: Vector3 { x: 50, y: 50 z: 50 }
		target: Vector3{ x: 0, y: 10, z: 0 }
		up: Vector3{ x: 0, y: 1, z: 0 }
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
			defer {  vraylib.end_drawing() }

			vraylib.clear_background(vraylib.raywhite)
			{
				vraylib.begin_mode_3d(camera)
				defer { vraylib.end_mode_3d() }

				vraylib.draw_grid(20, 10)
				vraylib.draw_model(suzanne,  Vector3{ x: 0, y: 0, z: 0 }, 10, vraylib.lightgray)
			}

			vraylib.draw_text("Hello Suzanne", 20, 20, 20, vraylib.lightgray)
		}
	}


}
