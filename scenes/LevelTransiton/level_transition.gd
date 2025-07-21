extends Node2D

@export var next_level_scene := "res://scenes/level_one/level_one.tscn"


# called when any collision object enters the area2D
func _on_area_2d_body_entered(_body: Node2D) -> void:
	# change scene to next level
	get_tree().change_scene_to_file(next_level_scene)

	
