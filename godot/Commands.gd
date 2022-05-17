extends Node


signal command_processed(command)


func validate_command(command) -> bool:
	return bool(randi() % 2)


func process_command(command) -> void:
	emit_signal("command_processed", command)
