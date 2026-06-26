extends Control

@onready var main = $".."


func _ready():
	if main is CanvasLayer:
		main = $"../.."

func _on_settings_pressed():
	main.settings.visible = true
