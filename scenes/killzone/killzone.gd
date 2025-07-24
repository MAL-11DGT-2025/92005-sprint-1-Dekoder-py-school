extends Area2D

@onready var timer: Timer = $Timer


func _on_body_entered(body: Node2D) -> void:
	# prevent colliding again
	body.set_process(false)
	body.get_node("CollisionShape2D").queue_free()
	
	# slow down the game
	Engine.time_scale = 0.2
	timer.start()

func _on_timer_timeout() -> void:
	# after time ends, reset time scale and reload level
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
