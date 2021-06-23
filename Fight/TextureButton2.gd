extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButton2_pressed():
	$PopupMenu.popup()




func _on_PopupMenu_about_to_show():
	$PopupMenu/glok.visible = true


func _on_TextureButton_pressed():
	$PopupMenu.hide()

