class_name Level extends Node2D

@onready var main = $".."

var rotation_direction = 1

func _process(delta: float) -> void:
	rotate(rotation_direction*0.2*delta)

func reset():
	rotation = 0
	rotation_direction = 1
