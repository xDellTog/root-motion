extends CharacterBody3D

const SPEED = 5.0
const JUMP_VELOCITY = 4.5

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

@onready var pivot: Node3D = $Pivot;
@onready var animation_tree: AnimationTree = $AnimationTree;

func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	var move_amount = clamp(abs(input_dir.x) + abs(input_dir.y), 0, 1)

	var direction = Vector3(input_dir.x, 0, input_dir.y).normalized()
	var blend_position = animation_tree.get("parameters/Locomotion/blend_position").slerp(Vector2(direction.x, -direction.z), 0.5);
	animation_tree.set("parameters/Locomotion/blend_position", blend_position);

	var current_rotation = pivot.transform.basis.get_rotation_quaternion()
	var root_motion_velocity = current_rotation * animation_tree.get_root_motion_position() / delta;

	velocity = Vector3(root_motion_velocity.x, velocity.y, root_motion_velocity.z);

	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta

	move_and_slide()

	print("root_motion_position: ", animation_tree.get_root_motion_position())
