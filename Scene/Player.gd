extends CharacterBody2D

const speed = 300.0

func shooting(_delta):


func _physics_process(delta):
	velocity = Vector2(0,0)
	
	if Input.is_action_pressed("ui_left"):
		velocity.x = -speed
	
	if Input.is_action_pressed("ui_right"):
		velocity.x = speed
		
	if Input.is_action_pressed("ui_up"):
		velocity.y = -speed
		
	if Input.is_action_pressed("ui_down"):
		velocity.y = speed

	if Input.is_action_pressed("ui_accept"):
		pass

	velocity.normalized()
	
	move_and_slide()
