extends Button


@onready var root: Node = $"../../.."

@onready var Fade: ColorRect = $"../../BlackScreen"
@export var duration : float = 0.5




func _on_button_up() -> void:
	Fade.visible = true
	await FadeOut()
	 # Replace with function body.

func FadeOut():
	var tween = create_tween()
	tween.tween_property(Fade,"modulate",Color(0, 0, 0, 1), duration)
	await tween.finished
	


func _on_mouse_entered() -> void:
	var tween = create_tween()
	tween.tween_property(self,"modulate",Color(1.0, 1.0, 0.0, 1.0), 0.08)


func _on_mouse_exited() -> void:
	var tween = create_tween()
	tween.tween_property(self,"modulate",Color(1.0, 1.0, 1.0, 1.0), 0.08)
	
func _on_button_down() -> void:
	var tween = create_tween()
	tween.tween_property(self,"modulate",Color(0.651, 0.651, 0.651, 1.0), 0.08)
