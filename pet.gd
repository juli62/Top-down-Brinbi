extends KinematicBody2D


export (int) var speed = 200

onready var player = get_node("../Brinbi")
var target = Vector2()
var velocity = Vector2()

func _input(event):
	match event.as_text():
		"D":
			target = player.global_position
		"S":
			target = player.global_position
		"W":
			target = player.global_position
		"A":
			target = player.global_position
			
func _physics_process(_delta):
	velocity = position.direction_to(target) * speed
	# look_at(target)
	if position.distance_to(target) > 5:
		velocity = move_and_slide(velocity)
	elif position.distance_to(target) <= 5:
		velocity = 0
	elif position.distance_to(target) < 5:
			velocity = -1
