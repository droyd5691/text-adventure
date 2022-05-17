extends Node


signal updated(update)


func process_command(command) -> void:
	emit_signal("updated", command)
