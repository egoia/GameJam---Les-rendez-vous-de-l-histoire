class_name Fork
extends StoryNode

@export var seuil : int
@export var jauge : GameManager.Jauge
@export var true_next : StoryNode
@export var false_next : StoryNode

func getNextFork(jauge_value : int) :
	return true_next if jauge_value>seuil else false_next
	
