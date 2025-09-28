extends Node2D

@onready var old: AudioStreamPlayer = $AudioStreamPlayer2
@onready var current: AudioStreamPlayer = $AudioStreamPlayer
var transitioning = false
@export var fading_value : int
@export var volume : int
@export var start_volume : int
const MUS_MENU_LOOPED = preload("uid://c7bh60hvx3owo")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	play_song(MUS_MENU_LOOPED)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if transitioning : 
		old.volume_db -= fading_value*delta
		current.volume_db += fading_value*delta
		
		if(current.volume_db>= volume) : 
			old.stop()
			transitioning = false
			current.volume_db = volume

func play_song(song : AudioStream):
	var tmp = old
	old = current
	current = tmp
	current.stream = song
	current.volume_db = start_volume
	current.play()
	transitioning = true
