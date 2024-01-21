extends CharacterBody2D

const SPEED = 300.0

func _physics_process(delta):
	velocity = Vector2(0,0)
	
	if Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
	
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
		
	if Input.is_action_pressed("ui_up"):
		velocity.y = -SPEED
		
	if Input.is_action_pressed("ui_down"):
		velocity.y = SPEED

	velocity.normalized()
	
	move_and_slide()
