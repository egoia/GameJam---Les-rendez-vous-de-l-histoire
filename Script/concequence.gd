extends Node
@onready var enonce: Label = $Enonce
@onready var button: Button = $Button

func _ready() -> void:
	hide()

func setUp(consequence : Evenement):
	enonce.text = consequence.enonce
	show()

func hide():
	button.visible = false
	button.disabled = true
	enonce.visible = false
	
func show() : 
	button.visible = true
	button.disabled = false
	enonce.visible = true
