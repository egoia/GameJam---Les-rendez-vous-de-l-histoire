class_name GameManager
extends Node2D
enum Jauge { REPRESSION, CONSERVTIVE, REVOLUTIONNARY}

var current_node : StoryNode
@onready var backgroud: Sprite2D = $Backgroud

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func manage_choice():
	#recupere info du prochain evenement
	var choice = current_node as Choix
	
	
func manage_Fork():
	pass
	



func load_consequence_UI(consequence : Evenement):
	#transition consequence
	pass
	
func load_choice_UI(choix : Choix):
	#transition  prochain choix?
	backgroud.texture = choix.decors
	pass
	
func load_end_UI(end : Fin):
	#
	pass
	
