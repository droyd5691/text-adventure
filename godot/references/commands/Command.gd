class_name Command
extends Reference


var aliases: Array setget set_aliases


func set_aliases(_new_aliases: Array) -> void:
	pass


func execute() -> String:
	assert(false, "This function needs to be implemented in the child class.")
	return "Override me!"
