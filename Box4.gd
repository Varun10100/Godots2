extends RigidBody3D
#var box4 = get_node("Box4")

# Called when the node enters the scene tree for the first time.
# Inside the script attached to $Box4 node


func _ready():
	# Connect the signal "body_entered" from $CollisionShape3D12 to the method "_on_BodyEntered"
	$Box4.connect("body_entered", self, "_on_BodyEntered")

func _on_BodyEntered(body):
	# This method will be called when the "body_entered" signal is emitted by $CollisionShape3D12
	print("Body entered:", body)


func _process(delta):
	pass
	
