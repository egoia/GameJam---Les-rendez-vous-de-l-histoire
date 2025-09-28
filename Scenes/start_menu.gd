extends Node
const MUS_MENU_LOOPED = preload("uid://c7bh60hvx3owo")
@onready var Fade: ColorRect = $CanvasLayer/BlackScreen
@export var duration: float = 0.5


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dj.play_song(MUS_MENU_LOOPED)
	await fadeIn()
	Fade.visible = false


func fadeIn():
	var tween = create_tween()
	tween.tween_property(Fade,"modulate",Color(0, 0, 0, 0), duration)
	await tween.finished
