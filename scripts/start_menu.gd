extends Node2D


@onready var start_button: Button = $StartButton
@onready var game_title: Label = $GameTitle

func get_center(node) -> Vector2:
	return  (get_viewport_rect().size - node.size) / 2

func _ready() -> void:
	# center start menu items
	start_button.position = get_center(start_button)
	game_title.position = get_center(game_title)
	# move them into the correct y-axis position
	start_button.position.y += 60
	game_title.position.y -= 60
