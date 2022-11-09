extends KinematicBody2D
var vel = 12


func _ready():
	pass 
	
func _process(delta):
	
	var dir = Vector2.ZERO
	if Input.is_action_pressed("cima"):
		$Sprite.play("costas")
		dir.y -= vel
	if Input.is_action_pressed("baixo"):
		$Sprite.play("frente")
		dir.y += vel
	if Input.is_action_pressed("esquerda"):
		dir.x -= vel
	if Input.is_action_pressed("direita"):
		dir.x += vel
	move_and_slide(dir*vel)
#	print(position.x)
	if position.x > 1080:
		position.x = 5

	if position.x < 5:
		position.x = 1080
	pass

func _on_player_area_entered(area):
	if area.name == "moeda":
		get_parent().PONTOS +=5
	if area.name == "moedinha":
		get_parent().PONTOS += 1
		
	pass # Replace with function body.
