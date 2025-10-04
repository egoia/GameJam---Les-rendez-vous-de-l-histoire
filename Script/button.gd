extends Button
@onready var ParentNode: Node2D = $"../.."

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
	
	var tween = create_tween()
	tween.tween_property(self,"modulate",Color(1.0, 1.0, 1.0, 1.0), 0.08)
	
	await ParentNode.hideChoixUI()
	
	game_manager.select_choice(choice)
	
func _on_button_down() -> void:
	var tween = create_tween()
	tween.tween_property(self,"modulate",Color(0.651, 0.651, 0.651, 1.0), 0.08)
