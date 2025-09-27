extends Node
@onready var custom_button: Button = $CustomButton3
@onready var custom_button_2: Button = $Custom_button4
@onready var custom_button_3: Button = $Custom_button5


func Hide():
	custom_button.visible = false
	custom_button.disabled = true
	
	custom_button_2.visible = false
	custom_button_2.disabled = true
	
	custom_button_3.visible = false
	custom_button_3.disabled = true
	
func Show():
	
	custom_button.visible = true
	custom_button.disabled = false
	
	custom_button_2.visible = true
	custom_button_2.disabled = false
	
	custom_button_3.visible = true
	custom_button_3.disabled = false
