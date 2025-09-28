extends Node
@onready var enonce: Label = $Enonce
@onready var button: Button = $Button
@onready var titre: Label = $Titre
@onready var panel: Panel = $Panel
@onready var back_ground_ilustration: TextureRect = $BackGroundIlustration
@onready var illustration: TextureRect = $Ilustration

func _ready() -> void:
	hide()

func setUp(consequence : Evenement):
	titre.text = consequence.titre
	enonce.text = consequence.enonce
	illustration.texture = consequence.illustration
	show()

func hide():
	button.visible = false
	button.disabled = true
	enonce.visible = false
	if illustration !=null : 
		illustration.visible = false
	titre.visible = false
	panel.visible = false
	back_ground_ilustration.visible = false
	
	
func show() : 
	button.visible = true
	button.disabled = false
	enonce.visible = true
	if illustration !=null : 
		illustration.visible = true
	titre.visible = true
	panel.visible = true
	back_ground_ilustration.visible = true
