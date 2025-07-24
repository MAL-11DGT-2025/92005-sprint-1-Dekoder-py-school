extends Node2D

@export var next_level_scene := "res://scenes/level_one/level_one.tscn"
@onready var level_up_sound := $LevelUpSound


# Called when any collision object enters the area2D
func _on_area_2d_body_entered(_body: Node2D) -> void:
	# hide so user cannot hit the diamond twice
	$".".visible = false

	# Play level sound effect
	level_up_sound.play()
	
	# Slow motion
	Engine.time_scale = 0.5
	
	# Wait for sound to finish
	await level_up_sound.finished
	
	# Resume normal time scale
	Engine.time_scale = 1
	
	# Change scene to next level
	get_tree().change_scene_to_file(next_level_scene)
	
	

	
