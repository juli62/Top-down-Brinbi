extends TextureProgress



func _on_enemi_helth_value_changed(value):
	if value == 0:
	 get_tree().change_scene("res://end scene.tscn")
