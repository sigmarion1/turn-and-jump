extends Timer
@export var count := 5

signal counted_down(number)
signal game_timer_start()


# Called when the node enters the scene tree for the first time.
func _ready():
	start()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_timeout():
	count -= 1
	emit_signal("counted_down", count)

	
	if count == 0:
		emit_signal("game_timer_start")

	if count < -1:
		stop()
