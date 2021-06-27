extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var timer = get_node("../Timer")
var turn = false
var rng = RandomNumberGenerator.new()
var damage = rng.randf_range(10, 26)
var damager = rng.randf_range(5,20)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass




func _on_TextureButton_button_down():
	$"../enemi helth".set_value($"../enemi helth".value - damage)
	timer.set_wait_time(2)
	timer.start()
	turn = true
	$".".disabled = true
	$"../TextureButton2".disabled = true
	$"../TextureButton3".disabled = true


	

func _on_Timer_timeout():
	timer.stop()
	$".".disabled = false
	$"../TextureButton2".disabled = false
	$"../TextureButton3".disabled = false
	$"../pleyel helth".set_value($"../pleyel helth".value - damager)
