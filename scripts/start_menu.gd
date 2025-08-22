extends Node2D


@onready var button_container = $ButtonContainer
@onready var game_title: Label = $GameTitle

func get_center(node) -> Vector2:
	return  (get_viewport_rect().size - node.size) / 2

func _ready() -> void:
	# center start menu items
	button_container.position = get_center(button_container)
	game_title.position = get_center(game_title)
	# move them into the correct y-axis position
	button_container.position.y -= 100
	game_title.position.y -= 220
