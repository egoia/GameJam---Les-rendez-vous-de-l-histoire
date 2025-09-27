extends Button
@onready var root: Node = $"../.."




func _on_button_up() -> void:
	root.get_tree().change_scene_to_file("res://Scenes/main.tscn")
	 # Replace with function body.
