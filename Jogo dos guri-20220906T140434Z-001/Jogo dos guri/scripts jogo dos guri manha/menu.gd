extends Node2D



func _ready():
	pass 



func _on_quit_pressed():
	get_tree().quit()


func _on_Start_pressed():
	get_tree().preload_scene("res://cenas/Node2D.tscn")

