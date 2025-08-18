extends CanvasLayer

@onready var coin_count: Label = $CoinCount

var coins := 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	coin_count.text = str(coins)
	

# when coin collected
func _on_coin_body_entered(body: Node2D) -> void:
	# increase coin counter
	coins += 1
	coin_count.text = str(coins)
