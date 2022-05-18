extends PanelContainer


signal valid_text_entered(text)


onready var text_display: Node = $MarginContainer/VBoxContainer/HBoxContainer/TextDisplay


func display_command_error(error_message) -> void:
	text_display.display_error(error_message)


func display_world_update(update) -> void:
	text_display.display_update(update)


func validate_text(text: String) -> bool:
	return not text.empty() and " " in text


func _on_TextInput_text_entered(text) -> void:
	if validate_text(text):
		emit_signal("valid_text_entered", text)
	else:
		text_display.display_error("Invalid command text entered: '%s'" % text)
