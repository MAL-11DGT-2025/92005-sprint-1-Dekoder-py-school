extends CanvasLayer

@onready var coin_count: Label = $CoinCount

var coins := 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	coin_count.text = str(coins)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_coin_body_entered(body: Node2D) -> void:
	coins += 1
	coin_count.text = str(coins)
