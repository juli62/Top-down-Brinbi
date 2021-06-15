extends KinematicBody2D


export (int) var speed = 200

onready var player = get_node("../KinematicBody2D")
var target = Vector2()
var velocity = Vector2()

func _input(event):
	if event.is_action_pressed("right"):
		target = player.global_position
	elif  event.is_action_pressed("down"):
		target = player.global_position
	elif  event.is_action_pressed("up"):
		target = player.global_position
	elif  event.is_action_pressed("left"):
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
