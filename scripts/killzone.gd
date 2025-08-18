extends Area2D

@onready var timer: Timer = $Timer
@onready var death_sound: AudioStreamPlayer = $DeathSound


func _on_body_entered(body: Node2D) -> void:
	# Disable player collision so the player falls through any objects
	body.set_process(false)
	body.get_node("CollisionShape2D").queue_free()
	
	
	# Slow down the game
	Engine.time_scale = 0.2
	
	# Play death sound
	death_sound.play()

	# After sound ends, start a short timer before reloadinng
	await death_sound.finished
	timer.start()

func _on_timer_timeout():
	# reset time scale and reload scene
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
