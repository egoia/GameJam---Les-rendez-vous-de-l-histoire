extends Node
@onready var livre_histoire: Label = $LivreHistoire
@onready var resume_partie: Label = $ResumePartie
@onready var button: Button = $Button
@onready var root: GameManager = $"../.."
@onready var title: Label = $Title
@onready var title_static: Label = $TitleStatic



func _ready() -> void:
	hide()

func setUp(fin : Fin):
	resume_partie.text = fin.enonce
	livre_histoire.text = fin.history_book
	title.text = fin.titre
	show()

func hide():
	button.visible = false
	button.disabled = true
	resume_partie.visible = false
	livre_histoire.visible = false
	title.visible = false
	title_static.visible = false
	
func show() : 
	button.visible = true
	button.disabled = false
	resume_partie.visible = true
	livre_histoire.visible = true
	title.visible = true
	title_static.visible = true
	
func go_to_menu():
	SoundEffects.play()
	root.get_tree().change_scene_to_file("res://Scenes/start_menu.tscn")
