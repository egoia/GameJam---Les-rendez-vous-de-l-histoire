extends Node2D

@onready var ilustration: TextureRect = $Ilustration
@onready var enonce: Label = $Enonce
@onready var titre: Label = $Titre
@onready var back_ground_ilustration: TextureRect = $BackGroundIlustration
@onready var panel: Panel = $Panel

@onready var _2Bts: Node2D = $"2Buttons2D"
@onready var _3Bts: Node2D = $"3Buttons2D"

@export var durationHideChoice : float = 0.2
@export var durationShowChoice : float = 0.6

func resetNode():
	position = Vector2(0,957)
	rotation = 0


func choixHide() : 
	_2Bts.Hide()
	_3Bts.Hide()
	ilustration.visible = false
	enonce.visible = false
	back_ground_ilustration.visible = false
	panel.visible = false
	titre.visible = false
	resetNode()
	
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
	
	
func hideChoixUI():
	var tween = create_tween()
	#tween.tween_property(choixNode , "position" , Vector2(0,1048.0),  durationShowChoice)
	tween.tween_property(self , "rotation" , -60 * PI / 180,  durationHideChoice)
	
	await get_tree().create_timer(0.6).timeout 
	
func showChoixUI():
	await get_tree().create_timer(0.6).timeout 
	var tween = create_tween()
	tween.tween_property(self , "position" , Vector2(0,-80),  durationShowChoice - 0.2)
	tween.tween_property(self , "position" , Vector2(0,0),  durationShowChoice - 0.5)
	await tween.finished

	
	
