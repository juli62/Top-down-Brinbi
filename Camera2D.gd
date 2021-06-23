extends Camera2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Door_body_entered(body):
	if body.name == "Brinbi":
		self.position.x = 500


func _on_Area2D_body_entered(body):
	self.position.x = -500
