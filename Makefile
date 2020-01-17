V ?= /usr/local/bin/v
RAYLIB_H ?= /v/raylib/src/raylib.h

EXAMPLES = examples/models/models_load \
   examples/audio/audio_streaming \
   examples/core/core_2d_camera \
   examples/core/core_basic_window \
   examples/core/core_input_keys \
   examples/core/core_input_mouse \
   examples/core/core_input_mouse_wheel

examples: $(EXAMPLES)

%: %.v
	$(V) -g -keep_c -o $@ $<

clean:
	rm -rf $(EXAMPLES)

regen:
	rm -rf z_c_fns.v
	$(V) run tools/raylib2v.v $(RAYLIB_H) > z_c_fns.v
