extends CharacterBody2D

const GRAVITY = 150.0
const WALK_SPEED = 300

func _physics_process(delta):
	velocity.y += delta * GRAVITY

	if Input.is_action_pressed("ui_left"):
		velocity.x = -WALK_SPEED
		if Input.is_action_pressed("sprint"):
			velocity.x = -2*WALK_SPEED
	elif Input.is_action_pressed("ui_right"):
		velocity.x =  WALK_SPEED
		if Input.is_action_pressed("sprint"):
			velocity.x = 2*WALK_SPEED
	else:
		velocity.x = 0

	# "move_and_slide" already takes delta time into account.
	move_and_slide()
