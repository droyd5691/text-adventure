extends Node


var commands


func return_command(text) -> Command:
	var words: Array = text.split(" ")
	var command: Command = null
	for item in commands:
		for alias in (item as Command).aliases:
			if alias == words[0]:
				command = item
				break
	return command
