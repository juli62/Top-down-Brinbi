extends TextureProgress
onready var timer = get_node("../Timer")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_pleyel_helth_value_changed(value):
	if value == 0:
		timer.set_wait_time(2)
		timer.start()
	 


func _on_Timer_timeout():
	get_tree().change_scene("res://end scene.tscn")
