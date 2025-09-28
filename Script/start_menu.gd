extends Node
const MUS_MENU_LOOPED = preload("uid://c7bh60hvx3owo")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dj.play_song(MUS_MENU_LOOPED)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
