extends Button



func _on_button_up() -> void:

	var tween = create_tween()
	tween.tween_property(self,"modulate",Color(1.0, 1.0, 1.0, 1.0), 0.08)
	
func _on_button_down() -> void:
	var tween = create_tween()
	tween.tween_property(self,"modulate",Color(0.651, 0.651, 0.651, 1.0), 0.08)
