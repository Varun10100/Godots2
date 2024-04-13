extends CharacterBody3D

var Velocity  = Vector3(0,0,0)
const SPEED = 5

func _ready():
	pass
func _physics_process(delta):
	if Input.is_action_pressed("ui_right") and Input.is_action_pressed("ui_left"):
		velocity.z = 0
	elif Input.is_action_pressed("ui_right"):
		velocity.z = -SPEED
	elif Input.is_action_pressed("ui_left"):
		velocity.z = SPEED
	else:
		velocity.z = lerp(velocity.z,0.0,0.1)
	if Input.is_action_pressed("ui_up") and Input.is_action_pressed("ui_down"):
		velocity.x = 0
	elif Input.is_action_pressed("ui_up"):
		velocity.x = -SPEED
	elif Input.is_action_pressed("ui_down"):
		velocity.x = SPEED
	else:
		velocity.x = lerp(velocity.x,0.0,0.1)
	move_and_slide()
		
