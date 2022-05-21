class_name AddLocation
extends Command


var parent: Location setget set_parent
var child: Location setget set_child


func set_parent(_new_parent: Location) -> void:
	pass


func set_child(new_child: Location) -> void:
	pass


func _init(new_parent: Location, new_child: Location) -> void:
	parent = new_parent
	child = new_child
	self.aliases = ["Add Location", "add location"]


func execute() -> String:
	parent.add_location(child)
	return "Add Location command executed. Location %s added to Location %s." % [child.title, parent.title]
