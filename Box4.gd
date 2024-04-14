extends RigidBody3D
var push_strength = 100
#var box4 = get_node("Box4")

# Called when the node enters the scene tree for the first time.
#func _ready():
	#var node4 int = $Box4
	#$CollisionShape3D12.connect("body_entered", node4, "_on_BodyEntered")
#func _on_BodyEntered(body):
	#if body.is_in_group("character"):
  
		#body.apply_impulse(Vector3.ZERO, Vector3(0, 5, 0))

#func _process(delta):
	#pass
	





#func _on_area_3d_body_entered(hit_normal: Vector3) -> void:
	#print("Hello")
	#var push_force = hit_normal * push_strength
	#apply_impulse(Vector3.ZERO, push_force)


func _on_area_3d_body_entered(Body):
	print("Hello WOrld")
	#ar velocity = Boy.get_linear_velocity()
	#ar push_force = Vector3 * push_strength
	apply_impulse(Vector3.RIGHT * 10)
	
