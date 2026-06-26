extends Control


func _ready():
	%Master.value = Game.volume
	%Music.value = Game.music_volume
	%SFX.value = Game.sfx_volume
	match Game.pixelation:
		Game.PixelationLevel.ON:
			%Pixelation.select(0)
		Game.PixelationLevel.REDUCED:
			%Pixelation.select(1)
		Game.PixelationLevel.OFF:
			%Pixelation.select(2)

func _on_back_pressed():
	visible = false

func _on_master_value_changed(value: float):
	Game.volume = value

func _on_music_value_changed(value: float):
	Game.music_volume = value

func _on_sfx_value_changed(value: float):
	Game.sfx_volume = value

func _on_pixelation_item_selected(index):
	match index:
		0: Game.pixelation = Game.PixelationLevel.ON
		1: Game.pixelation = Game.PixelationLevel.REDUCED
		2: Game.pixelation = Game.PixelationLevel.OFF
