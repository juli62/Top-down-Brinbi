extends TextureRect


# Path to the next scene to transition to
export(String, FILE, "*res://Fight/Fight.tscn") var next_scene_path

# Reference to the _AnimationPlayer_ node
onready var _anim_player := $AnimationPlayer


func transition_to(_next_scene := next_scene_path) -> void:
	# Plays the Fade animation and wait until it finishes
	_anim_player.play("Transition")
	yield(_anim_player, "animation_finished")
	# Changes the scene
	get_tree().change_scene("res://Fight/Fight.tscn")
