@tool
extends EditorPlugin

const ROOT_MOTION_3D: String = "RootMotion3D"

func _enter_tree():
    add_custom_type(ROOT_MOTION_3D, "Node3D", preload ("res://addons/root_motion/scripts/root_motion_3d.gd"), preload ("res://addons/root_motion/icons/root_motion_3d.svg"))

func _exit_tree():
    remove_custom_type(ROOT_MOTION_3D)