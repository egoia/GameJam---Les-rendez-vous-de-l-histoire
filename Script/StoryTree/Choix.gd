class_name Choix
extends Evenement


@export var choix : Array[ChoicePossibility]
@export var next_possibilities : Array[StoryNode]
@export var illustration : Texture2D


func getPossibility(i):
	return next_possibilities[i]
