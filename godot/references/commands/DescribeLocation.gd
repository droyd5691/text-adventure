class_name DescribeLocation
extends Command


var location: Location setget set_location


# warning-ignore:unused_argument
func set_location(new_location: Location) -> void:
	pass


func _init(new_location: Location) -> void:
	location = new_location
	self.aliases = ["Describe Location", "describe location"]


func execute() -> String:
	return location.description
