extends TextureProgress

onready var timer = get_node("../Timer")

func _on_enemi_helth_value_changed(value):
	if value == 0:
		timer.set_wait_time(2)
		timer.start()
	 


func _on_Timer_timeout():
	if value == 0:	
		get_tree().change_scene("res://end scene.tscn")
