extends Node2D
var PONTOS = 0
var Vidas = 3
var pre_pontos_esp = preload("res://cenas/Pontos.tscn")
var ponto_extra = 0
func _ready():
	pass
	
func _process(delta):
#	print(PONTOS)
	
	if Vidas == 2:
		$hud/Vidas.visible = false
	if Vidas == 1:
		$hud/Vidas2.visible = false
	if Vidas == 0:
		$hud/Vidas3.visible = false 
	
	if PONTOS > 2:
		ponto_extra += 1 * delta
		if ponto_extra >1 and ponto_extra <1.5:
			ponto_ex()
			ponto_extra = 3

	$Label.text = PONTOS as String
#	print(PONTOS)
	
			
func ponto_ex():
	var pe = pre_pontos_esp.instance()
	pe.position= Vector2(rand_range(10,800),rand_range(10,800))
	add_child(pe)
func _on_Area2D_area_entered(area):
#	if area.name == "inimigo" or area.name == "inimigo2" or area.name == "inimigo3" or area.name == "inimigo4":
#		Vidas -= 1
	if area.name == "perde":
		Vidas-=1

	pass # Replace with function body.
