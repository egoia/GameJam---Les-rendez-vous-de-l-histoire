extends Node2D

@onready var ilustration: TextureRect = $Ilustration
@onready var enonce: Label = $Enonce
@onready var titre: Label = $Titre
@onready var back_ground_ilustration: TextureRect = $BackGroundIlustration
@onready var panel: Panel = $Panel

@onready var _2Bts: Node2D = $"2Buttons2D"
@onready var _3Bts: Node2D = $"3Buttons2D"

func choixHide() : 
	_2Bts.Hide()
	_3Bts.Hide()
	ilustration.visible = false
	enonce.visible = false
	back_ground_ilustration.visible = false
	panel.visible = false
	titre.visible = false
	
func choixShow():
	ilustration.visible = true
	enonce.visible = true
	back_ground_ilustration.visible = true
	panel.visible = true
	titre.visible = true
	

func _ready() -> void:
	#_2Bts.get_script().Hide()
	#_3Bts.get_script().Hide()
	
	_2Bts.Hide()
	_3Bts.Hide()
	
	
func setUp2Bts(choix : Choix):
	ilustration.texture =  choix.illustration
	enonce.text = choix.enonce
	titre.text = choix.titre
	
	for i in choix.choix.size():
		fillButton(_2Bts.get_child(i), choix.choix[i])
		
	_2Bts.Show()
	
func setUp3Bts(choix : Choix):
	ilustration.texture =  choix.illustration
	enonce.text = choix.enonce
	titre.text = choix.titre
	
	
	for i in choix.choix.size():
		fillButton(_3Bts.get_child(i), choix.choix[i])
		
	_3Bts.Show()
	
func fillButton(customBtNode, possibility ):
	customBtNode.choice = possibility
	customBtNode.setUp()
	
	

	
	
