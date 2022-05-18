extends Node


signal updated(update)


func process_command(command: Command) -> void:
	if command is TestCommand:
		handle_test_command(command)


func handle_test_command(test_command: TestCommand) -> void:
	emit_signal("updated", "Test Command handled.")
