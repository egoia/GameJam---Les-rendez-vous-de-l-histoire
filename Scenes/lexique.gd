extends Node

@onready var black_screen: ColorRect = $BlackScreen
@onready var scroll_container: ScrollContainer = $ScrollContainer
@onready var back_ground_ilustration: TextureRect = $BackGroundIlustration
var is_visible = false
@onready var lexique_btn: Button = $"../LexiqueBtn"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func show() : 
	black_screen.visible = true
	scroll_container.visible = true
	back_ground_ilustration.visible = true
	
func hide() : 
	black_screen.visible = false
	scroll_container.visible = false
	back_ground_ilustration.visible = false
	
func button():
	SoundEffects.play()
	if is_visible : 
		hide()
		is_visible = false
		lexique_btn.text = "LEXIQUE"
	else:
		show()
		is_visible = true
		lexique_btn.text = "FERMER"
		
