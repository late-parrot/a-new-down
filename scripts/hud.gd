extends Control

@onready var main = $".."


func _ready():
	if main is CanvasLayer:
		main = $"../.."
		main.connect("level_changed", _on_level_changed)
		_on_level_changed(0)

func _on_settings_pressed():
	main.settings.visible = true

func _on_level_changed(level: int):
	%Level0.visible = false
	%Level2.visible = false
	if level == 0:
		%Level0.visible = true
	elif level == 2:
		%Level2.visible = true
