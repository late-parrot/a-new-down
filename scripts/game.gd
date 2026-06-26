extends Node


var pixelation_material: ShaderMaterial

var volume = 1.0:
	set(v):
		var idx := AudioServer.get_bus_index("Master")
		AudioServer.set_bus_volume_linear(idx, v)
		volume = v
var music_volume = 1.0:
	set(v):
		var idx := AudioServer.get_bus_index("Music")
		AudioServer.set_bus_volume_linear(idx, v)
		music_volume = v
var sfx_volume = 1.0:
	set(v):
		var idx := AudioServer.get_bus_index("SFX")
		AudioServer.set_bus_volume_linear(idx, v)
		sfx_volume = v

enum PixelationLevel {
	ON, REDUCED, OFF
}
var pixelation = PixelationLevel.ON:
	set(v):
		var pixel_size
		match v:
			PixelationLevel.ON: pixel_size = 2
			PixelationLevel.REDUCED: pixel_size = 1
			PixelationLevel.OFF: pixel_size = 0
		pixelation_material.set_shader_parameter("max_pixel_size", pixel_size)
		pixelation = v
