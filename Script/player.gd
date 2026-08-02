extends CharacterBody2D


const SPEED = 120
const JUMP_VELOCITY = -350

@onready var animation = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	# esta es mi gravedad
	if not is_on_floor():
		velocity += get_gravity() * delta

	# este es para saltar
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# este es mi movimiento
	var direction := Input.get_axis("ui_left", "ui_right")

	if direction:
		velocity.x = direction * SPEED
		animation.flip_h = direction<0
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
	if direction !=0:
		animation.play("caminar")
	else:
		animation.play("descanso")
		
	
