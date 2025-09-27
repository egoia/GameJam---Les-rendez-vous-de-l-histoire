extends Node

@export var exemple: Choix

var possibilities : Array[ChoicePossibility]
var illust : Texture2D

func _ready() -> void:
	#initChoiceWindow()
	pass
	
	
func initChoiceWindow():
	possibilities = exemple.choix
	$TextureRect.texture = exemple.illustration
	
func spawnChoices():
	pass
