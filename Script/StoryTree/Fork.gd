class_name Fork
extends StoryNode

@export var seuil : int
@export var for_repression : bool
@export var true_next : StoryNode
@export var false_next : StoryNode

func getNextFork(repression_value : int, rev_cons_value : int) :
	var test_value = repression_value if for_repression else rev_cons_value
	return true_next if test_value>seuil else false_next
	
