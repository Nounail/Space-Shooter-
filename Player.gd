extends CharacterBody2D


var speed = 1
var max_speed = 100
var rotate_speed = 0.08

func _physics_process(delta):
	if Input.is_action_pressed("left"):
		rotation -= rotate_speed
	if Input.is_action_pressed("Right"):
		rotation += rotate_speed
	velocity = velocity + Vector2(0,-speed).rotated(rotation)
	print(velocity) 
	
	position.x = wrapf(position.x, 0,1152)
	position.y = wrapf(position.y, 0,648)
	velocity = velocity.normalized() * clamp(velocity.length(), 0, max_speed)
	move_and_slide()
