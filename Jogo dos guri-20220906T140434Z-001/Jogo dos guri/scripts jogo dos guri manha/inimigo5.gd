extends KinematicBody2D
var vel = 10
var speed = rand_range(100,100)
var myself = null
var anima = true

func _ready():
	pass
func _physics_process(delta):
	var move = Vector2.ZERO
	move = Vector2.ZERO
	if myself:
		move = position.direction_to(myself.position) * speed
	move_and_slide(move)


	pass



func _on_seguir_body_entered(body):
	if body.name == "player":
		myself = body
	if body.name == "paredes":
		position.x += 3
		position.y += 5
	pass 
