extends Button

var choice : ChoicePossibility
@export var game_manager : GameManager
# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	pass # Replace with function body.


func setUp():
	text = choice.text
	


func _on_button_up() -> void:
	SoundEffects.play()
	get_parent().Hide()
	game_manager.select_choice(choice)
