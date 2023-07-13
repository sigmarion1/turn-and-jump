extends CanvasLayer

var current_time = 0
var is_playing = false

var text_template = "PRESS SPACEBAR 
TO TURN AND JUMP
%s
"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if is_playing:
		current_time += delta
	
	var mils = fmod(current_time,1) * 1000
	var secs = fmod(current_time, 60)
	var mins = fmod(current_time, 60*60) / 60
	
	var time_passed = "%02d : %02d : %03d" % [mins, secs, mils]
	
	
	$TimerText.text = time_passed


func show_game_over():
	$Message.text = "Congratulations!!"
	

func start_timer():
	$Message.text = "Congratulations!!"
	


func _on_message_timer_counted_down(number):
	if number == 0:
		$Message.text = "Start!"
	elif number < 0:
		$Message.text = ""
		is_playing = true
	else:
		$Message.text = text_template % number


func _on_area_2d_body_entered(body):
	is_playing = false
