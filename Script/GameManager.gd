class_name GameManager
extends Node2D
enum Jauge { REPRESSION, CONSERVTIVE, REVOLUTIONNARY}

var current_node : StoryNode
@onready var backgroud: Sprite2D = $Backgroud
var repression_value : int = 0
var conservative_value : int = 0
var revolutionnary_value : int = 0
const BUTTON = preload("uid://dfcnh23j61y6d")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func select_choice(choicePossibility : ChoicePossibility):
	match choicePossibility.jauge:
		Jauge.REPRESSION : 
			repression_value+= choicePossibility.value
		Jauge.CONSERVTIVE : 
			conservative_value+= choicePossibility.value
		Jauge.REVOLUTIONNARY : 
			revolutionnary_value+= choicePossibility.value
	current_node = choicePossibility.next
	manage()
	
func select_evenement():
	current_node = current_node.next
	manage()
	
func manage() : 
	if(current_node is Fork):
		var jauge_value = 0
		match current_node.jauge:
			Jauge.REPRESSION : 
				jauge_value = repression_value
			Jauge.CONSERVTIVE : 
				jauge_value = conservative_value
			Jauge.REVOLUTIONNARY : 
				jauge_value = revolutionnary_value
		current_node = current_node.getNextFork(jauge_value)
		manage()
	elif current_node is Choix : 
		load_choice_UI(current_node as Choix)
	elif current_node is Fin : 
		load_end_UI(current_node as Fin)
	else :
		load_consequence_UI(current_node as Evenement)
				



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
	
