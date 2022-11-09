extends Area2D
func _ready():
	pass

func _on_dano_area_entered(area):
	if area.name == "inimigo" or area.name == "inimigo2" or area.name == "inimigo3" :
		get_parent().Vidas -=1
	
	pass 
