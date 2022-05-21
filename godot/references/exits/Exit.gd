class_name Exit
extends Reference


enum Direction {
	UNDEFINED,
	NORTH,
	NORTH_EAST,
	EAST,
	SOUTH_EAST,
	SOUTH,
	SOUTH_WEST,
	WEST,
	NORTH_WEST,
	UP,
	DOWN,
	IN,
	OUT
}


var direction_aliases: Dictionary = {
	Direction.UNDEFINED : ["Undefined", "Null"],
	Direction.NORTH : ["North", "N"],
	Direction.NORTH_EAST : ["North East", "NE"],
	Direction.EAST : ["East", "E"],
	Direction.SOUTH_EAST : ["South East", "SE"],
	Direction.SOUTH : ["South", "S"],
	Direction.SOUTH_WEST : ["South West", "SW"],
	Direction.WEST : ["West", "W"],
	Direction.NORTH_WEST : ["North West", "NW"],
	Direction.UP : ["Up", "U"],
	Direction.DOWN : ["Down", "D"],
	Direction.IN : ["In", "I"],
	Direction.OUT : ["Out", "O"]
}


var leads_to: Reference
var direction: int setget set_direction


# warning-ignore:unused_argument
func set_direction(new_direction: int) -> void:
	pass


func get_direction_alias(is_short: bool = false) -> String:
	var aliases: Array = direction_aliases[direction]
	var output: String = ""
	if is_short:
		output = aliases[1]
	else:
		output = aliases[0]
	return output 


func _init(new_leads_to: Reference, new_direction: int) -> void:
	leads_to = new_leads_to
	direction = new_direction

