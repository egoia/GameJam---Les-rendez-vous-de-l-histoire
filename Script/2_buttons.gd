extends Node2D

@onready var custom_button: Button = $CustomButton
@onready var custom_button_2: Button = $CustomButton2


func Hide():
	custom_button.visible = false
	custom_button.disabled = true
	
	custom_button_2.visible = false
	custom_button_2.disabled = true
	
	print("Buttons Hidden ")
	
func Show():
	
	custom_button.visible = true
	custom_button.disabled = false
	
	custom_button_2.visible = true
	custom_button_2.disabled = false
	
	
