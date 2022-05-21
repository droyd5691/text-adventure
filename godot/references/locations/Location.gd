class_name Location
extends Reference


var title: String setget set_title
var description: String setget set_description
var exits: Array setget set_exits, get_exits


# warning-ignore:unused_argument
func set_title(new_title: String) -> void:
	pass


# warning-ignore:unused_argument
func set_description(new_description: String) -> void:
	pass


# warning-ignore:unused_argument
func set_exits(new_exits: Array) -> void:
	pass


func get_exits() -> Array:
	return exits.duplicate()


func _init(new_title: String, new_description: String) -> void:
	title = new_title
	description = new_description


func add_exit(exit: Exit) -> void:
	if not exits.has(exit):
		exits.append(exit)


func remove_exit(exit: Exit) -> void:
	if exits.has(exit):
		var index: int = exits.find(exit)
		exits.remove(index)
