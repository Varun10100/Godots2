extends CharacterBody3D
@export var sens = 100
var Velocity  = Vector3(0,0,0)
const SPEED = 10
const  RotateSpeed = 10
const JUMP_VELOCITY = 10
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

func _ready():
	pass
func _physics_process(delta):
	if not is_on_floor():
		velocity.y -= gravity * delta
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	if Input.is_action_pressed("ui_right") and Input.is_action_pressed("ui_left"):
		velocity.z = 0
	elif Input.is_action_pressed("ui_right"):
		velocity.z = -SPEED
		$MeshInstance3Ds.rotate_x(deg_to_rad(-RotateSpeed))
	elif Input.is_action_pressed("ui_left"):
		$MeshInstance3Ds.rotate_x(deg_to_rad(RotateSpeed))
		velocity.z = SPEED
	else:
		velocity.z = lerp(velocity.z,0.0,0.1)
	if Input.is_action_pressed("ui_up") and Input.is_action_pressed("ui_down"):
		velocity.x = 0
	elif Input.is_action_pressed("ui_up"):
		$MeshInstance3Ds.rotate_z(deg_to_rad(RotateSpeed))
		velocity.x = -SPEED
	elif Input.is_action_pressed("ui_down"):
		$MeshInstance3Ds.rotate_z(deg_to_rad(-RotateSpeed))
		velocity.x = SPEED
	else:
		velocity.x = lerp(velocity.x,0.0,0.1)
	move_and_slide()
		
		
