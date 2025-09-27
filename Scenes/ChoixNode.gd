extends Node

@onready var ilustration: TextureRect = $Ilustration
@onready var enonce: Label = $Enonce

@onready var _2Bts: Node = $"2Buttons"
@onready var _3Bts: Node = $"3Buttons"


func _ready() -> void:
	#_2Bts.get_script().Hide()
	#_3Bts.get_script().Hide()
	
	_2Bts.Hide()
	_3Bts.Hide()
	
	
func setUp2Bts(choix : Choix):
	ilustration.texture =  choix.illustration
	enonce.text = choix.enonce
	
	for i in choix.choix.size():
		fillButton(_2Bts.get_child(i), choix.choix[i])
		
	_2Bts.Show()
	
func setUp3Bts(choix : Choix):
	ilustration.texture =  choix.illustration
	enonce.text = choix.enonce
	
	for i in choix.choix.size():
		fillButton(_3Bts.get_child(i), choix.choix[i])
		
	_3Bts.Show()
	
func fillButton(customBtNode, possibility ):
	customBtNode.choice = possibility
	customBtNode.setUp()
	
	
	pass
	

	
	
