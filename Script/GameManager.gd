class_name GameManager
extends Node2D
enum Jauge { REPRESSION, CONSERVTIVE, REVOLUTIONNARY}

@export var current_node : StoryNode
@onready var backgroud: Sprite2D = $Decors
var repression_value : int = 0
var conservative_value : int = 0
var revolutionnary_value : int = 0

@onready var choixNode: Node = $Canvas/Choix
@onready var consequenceNode: Node = $Canvas/Concequence
@onready var fin_node: Node = $Canvas/Fin

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	select_evenement()


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
	consequenceNode.hide()
	manage()
	
func manage() : 
	if(current_node is Fork):
		fork()
	elif current_node is Choix : 
		load_choice_UI(current_node as Choix)
	elif current_node is Fin : 
		load_end_UI(current_node as Fin)
	else :
		load_consequence_UI(current_node as Evenement)
				

func fork():
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

func load_consequence_UI(consequence : Evenement):
	#transition consequence
	if consequence.decors !=null : 
		backgroud.texture = consequence.decors
	consequenceNode.setUp(consequence)
	
	
func load_choice_UI(choix : Choix):
	#transition  prochain choix?
	if(choix.decors!=null):
		backgroud.texture = choix.decors
	
	if choix.choix.size() == 3:
		choixNode.setUp3Bts(choix)
	else:
		choixNode.setUp2Bts(choix)
	
func load_end_UI(end : Fin):
	if(end.decors!=null):
		backgroud.texture = end.decors
	fin_node.setUp(end)
	fin_node.show()
	
