extends Node


onready var user_interface: Node = $UserInterface
onready var world: Node = $World
onready var commands: Node = $Commands


func _on_World_updated(update) -> void:
	user_interface.display_world_update(update)


func _on_UserInterface_valid_text_entered(text) -> void:
	var command: Command = commands.return_command(text)
	if command:
		world.process_command(command)
	else:
		user_interface.display_command_error("Failed to create command from entered text: %s" % text)
