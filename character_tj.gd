extends CharacterBody2D

@export var speed = 180
@export var jump_force = -900

const GRAVITY = 30


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	var velocity = Vector2.ZERO # The player's movement vector.
#	if Input.is_action_pressed("move_right"):
#		velocity.x += 1
#	if Input.is_action_pressed("move_left"):
#		velocity.x -= 1
#	if Input.is_action_pressed("move_down"):
#		velocity.y += 1
#	if Input.is_action_pressed("move_up"):
#		velocity.y -= 1
##
##	if velocity.length() > 0:
##		velocity = velocity.normalized() * speed
##		$AnimatedSprite2D.play()
##	else:
##		$AnimatedSprite2D.stop()
#
#	if velocity.length() > 0:
#		motion_ve = velocity.normalized() * speed
#
#	move_and_slide()		
##
##	position += velocity * delta * 100
##	print(position)
#
func get_input(delta):
	var input_velocity = Vector2.ZERO # The player's movement vector.
	
	if Input.is_action_pressed("move_right"):
		input_velocity.x += speed * delta
	elif Input.is_action_pressed("move_left"):
		input_velocity.x -= speed * delta
	else:
		input_velocity.x = 0

	
	if Input.is_action_pressed("move_up") and is_on_floor():
		input_velocity.y = -jump_force
						
	input_velocity.y += GRAVITY * delta
	
	velocity = input_velocity
	print(velocity)

	
	if velocity.length() > 0:
		$AnimatedSprite2D.play()
		if velocity.x > 0:
			$AnimatedSprite2D.flip_h = false
		elif velocity.x < 0:
			$AnimatedSprite2D.flip_h = true
	else:
		$AnimatedSprite2D.stop()

	
func _physics_process(delta):
	
	if Input.is_action_pressed("move_right"):
		velocity.x += speed
	elif Input.is_action_pressed("move_left"):
		velocity.x -= speed
		
	velocity.y += GRAVITY 
	if Input.is_action_pressed("move_up") and is_on_floor():
		velocity.y = jump_force
						
	
	move_and_slide()
	
	velocity.x = lerp(velocity.x, 0.0, 0.2)
	
	if velocity.length() > 0:
		$AnimatedSprite2D.play()
		if velocity.x > 0:
			$AnimatedSprite2D.flip_h = false
		elif velocity.x < 0:
			$AnimatedSprite2D.flip_h = true
	else:
		$AnimatedSprite2D.stop()
	
	
	
#	get_input(delta)
#	move_and_slide()
	
#	for i in get_slide_collision_count():
#		var collision = get_slide_collision(i)
#		print("I collided with ", collision.get_collider().name)
#
	
