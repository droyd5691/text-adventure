extends Node


signal updated(update)


var current_location: Location


var locations: Array = [] setget set_locations


# warning-ignore:unused_argument
func set_locations(new_locations: Array) -> void:
	pass


func _ready() -> void:
	var hallway: Location = Location.new("Hallway", "A clean and tidy hallway allowing access throughout the ground floor.")
	var kitchen: Location = Location.new("Kitchen", "Spotlessly clean area for cooking food.")
	var dining_room: Location = Location.new("Dining Room", "A room for dining with guests.")
	var living_room: Location = Location.new("Living Room", "A room for relaxing and entertaining.")
	hallway.add_exit(Exit.new(kitchen, Exit.Direction.NORTH))
	hallway.add_exit(Exit.new(dining_room, Exit.Direction.NORTH_WEST))
	hallway.add_exit(Exit.new(living_room, Exit.Direction.SOUTH_WEST))
	current_location = hallway


func process_command(command: Command) -> void:
	if command is TestCommand:
		handle_test_command(command)
		return
	if command is DescribeLocation:
		handle_describe_location(command)


func handle_test_command(test_command: TestCommand) -> void:
	var response: String = test_command.execute()
	emit_signal("updated", response)


func handle_describe_location(describe_location: DescribeLocation) -> void:
	var response: String = describe_location.execute()
	emit_signal("updated", response)
