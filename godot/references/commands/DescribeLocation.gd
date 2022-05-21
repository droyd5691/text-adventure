class_name DescribeLocation
extends Command


var location: Location


func _init(new_location: Location) -> void:
	location = new_location
	self.aliases = ["Describe Location", "describe location"]


func execute() -> String:
	return location.description
