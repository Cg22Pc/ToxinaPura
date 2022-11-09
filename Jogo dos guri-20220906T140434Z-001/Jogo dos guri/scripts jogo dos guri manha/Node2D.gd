extends Node2D
var pre_ing = [
	preload("res://cenas/inimigo.tscn"),
	preload("res://cenas/inimigo2.tscn"),
	preload("res://cenas/inimigo3.tscn"),
	preload("res://cenas/inimigo4.tscn")
]
var tempo = 0
func _ready():
	pass
	
func _process(delta):
	tempo += 1* delta
	if tempo >2:
		inimigos()
		inimigos2()
		inimigos3()
		inimigos4()
		tempo = 0
		
func inimigos():
	randomize()
	var sort = randi() % pre_ing.size()
	var inimig = pre_ing[sort].instance()
	add_child(inimig)

func inimigos2():
	randomize()
	var sort = randi() % pre_ing.size()
	var inimigos2 = pre_ing[sort].instance()
	add_child(inimigos2)

func inimigos3():
	randomize()
	var sort = randi() % pre_ing.size()
	var inimigos3 = pre_ing[sort].instance()
	add_child(inimigos3)
	
func inimigos4():
	randomize()
	var sort = randi() % pre_ing.size()
	var inimigos4 = pre_ing[sort].instance()
	add_child(inimigos4)
	
