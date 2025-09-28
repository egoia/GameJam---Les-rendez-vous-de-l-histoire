extends Node

@onready var Fade: ColorRect = $CanvasLayer/BlackScreen
@export var duration : float = 0.7

func _ready() -> void:
	
	await fadeIn()
	Fade.visible = false

func fadeIn():
	var tween = create_tween()
	tween.tween_property(Fade,"modulate",Color(0, 0, 0, 0), duration)
	await tween.finished
