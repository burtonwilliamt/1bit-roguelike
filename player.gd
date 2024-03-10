extends CharacterBody2D

const SPEED = 3000.0


func _process(_delta):
	if velocity.x > 0:
		$Sprite2D.flip_h = true
	elif velocity.x < 0:
		$Sprite2D.flip_h = false


func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Vector2()
	direction.x = Input.get_axis("left", "right")
	direction.y = Input.get_axis("up", "down")
	velocity = direction.normalized() * SPEED * delta

	move_and_slide()
