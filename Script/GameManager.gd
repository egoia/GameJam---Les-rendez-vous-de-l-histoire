class_name GameManager
extends Node2D
enum Jauge { REPRESSION, CONSERVTIVE, REVOLUTIONNARY}

var current_node : StoryNode

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func manage_choice():
	var choice = current_node as Choix
	

func load_consequence_UI(consequence : Evenement):
	pass
	
func load_choice_UI(choix : Choix):
	pass
	
func load_end_UI(end : Fin):
	pass
	
