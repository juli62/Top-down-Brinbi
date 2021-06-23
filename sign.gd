extends Area2D


var can_read = false
const DIALOG = preload("res://Dbox.tscn")



func _on_Area2D_body_entered(body):
	if body.name == "Brinbi":
		$Label.visible = true
		can_read = true

func _on_Area2D_body_exited(body):
	if body.name == "Brinbi":
		$Label.visible = false
		can_read = false
		
func _input(event):
	if Input.is_key_pressed(KEY_E) and can_read == true:
		
		$Label.visible = false
		$"AudioStreamPlayer".play()
		var dialog = DIALOG.instance()
		get_parent().add_child(dialog)
		
	


