extends Node
@onready var ilustration: TextureRect = $Ilustration
@onready var enonce: Label = $Enonce

func setUp(consequence : Evenement):
	ilustration.texture =  consequence.illustration
	enonce.text = consequence.enonce
