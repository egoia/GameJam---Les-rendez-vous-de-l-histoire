extends Node
@onready var enonce: Label = $Enonce
@onready var button: Button = $Button
@onready var titre: Label = $Titre

func _ready() -> void:
	hide()

func setUp(consequence : Evenement):
	titre.text = consequence.titre
	enonce.text = consequence.enonce
	show()

func hide():
	button.visible = false
	button.disabled = true
	enonce.visible = false
	titre.visible = false
	
func show() : 
	button.visible = true
	button.disabled = false
	enonce.visible = true
	titre.visible = true
