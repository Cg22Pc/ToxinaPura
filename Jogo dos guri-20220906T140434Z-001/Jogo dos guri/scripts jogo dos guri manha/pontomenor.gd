extends KinematicBody2D


func _ready():
	pass


func _on_moedinha_area_entered(area):
	if area.name == "player":
		queue_free()
	pass
