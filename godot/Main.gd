extends Node


onready var user_interface: Node = $UserInterface
onready var world: Node = $World


func _on_World_updated(update) -> void:
	user_interface.display_world_update(update)


func _on_UserInterface_command_issued(command) -> void:
	if Commands.validate_command(command):
		world.process_command(command)
	else:
		user_interface.display_command_error("Invalid Command!")
