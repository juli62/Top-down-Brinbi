extends KinematicBody2D


export (int) var speed = 200

onready var player = get_node("../Brinbi")
var target = Vector2()
var velocity = Vector2()

func _process(delta):
	target = player.global_position
	
func _physics_process(_delta):
	velocity = position.direction_to(target) * speed
	# look_at(target)
	var distance_to_player = global_position.distance_to($"../Brinbi".global_position)
	if distance_to_player > 100:
		velocity = move_and_slide(velocity)
	elif distance_to_player <= 100:
		velocity = 0
	elif distance_to_player < 100:
			velocity = -1
