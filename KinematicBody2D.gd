extends KinematicBody2D




onready var _animated_sprite = $AnimatedSprite

func _process(delta):
	if Input.is_action_pressed("right"):
		_animated_sprite.play("walk")
	elif Input.is_action_pressed("left"):
		_animated_sprite.play("walk")
	elif Input.is_action_pressed("up"):
		_animated_sprite.play("walk")
	elif Input.is_action_pressed("down"):
		_animated_sprite.play("walk")
	else:
		_animated_sprite.play("default")

export (int) var speed = 200

var velocity = Vector2()

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("right"):
		velocity.x += 1
	get_node( "AnimatedSprite" ).set_flip_h( true )
	if Input.is_action_pressed("left"):
		get_node( "AnimatedSprite" ).set_flip_h( false )
		velocity.x -= 1
   
	if Input.is_action_pressed("up"):
		velocity.y -= 1
	if Input.is_action_pressed("down"):
		velocity.y += 1
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)

