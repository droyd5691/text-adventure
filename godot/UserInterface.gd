extends PanelContainer


signal command_issued(command)


onready var text_display: Node = $MarginContainer/VBoxContainer/HBoxContainer/TextDisplay


func display_command_error(error_message) -> void:
	text_display.display_error(error_message)


func display_world_update(update) -> void:
	text_display.display_update(update)


func _on_TextInput_text_entered(text) -> void:
	emit_signal("command_issued", text)
