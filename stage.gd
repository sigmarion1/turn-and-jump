extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$HUD/MessageTimer.start()
	
	await $HUD/MessageTimer.timeout
	
	$HUD/Message.text = ""


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_area_2d_body_entered(body):
#	print(body.name)
	if body.name == "Character":
		$HUD/Message.text = "congratulations!"
		$Character.is_active = false

