extends CharacterBody2D
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

var direction: Vector2 = Vector2()
func read_input():
	velocity = Vector2()
	if Input.is_action_pressed("Up"):
		velocity.y -= 1
		direction = Vector2(0,1)
		animated_sprite.frame = 0
		animated_sprite.flip_h =0
	if Input.is_action_pressed("Down"):
		velocity.y += 1
		direction = Vector2(0,-1)
		animated_sprite.frame = 1
		animated_sprite.flip_h =0
	if Input.is_action_pressed("Left"):
		velocity.x -= 1
		direction = Vector2(-1,0)
		animated_sprite.frame = 2
		animated_sprite.flip_h =0
	if Input.is_action_pressed("Right"):
		velocity.x += 1
		direction = Vector2(1,0)
		animated_sprite.frame = 2
		animated_sprite.flip_h =1

	velocity = velocity.normalized()
	velocity = velocity * 200
	move_and_slide()

func _physics_process(delta):
	read_input()
