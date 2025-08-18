extends Area2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer



# when player walks into coin do pickup (sound, delete)
func _on_body_entered(body: Node2D) -> void:
	animation_player.play("pickup")
	
