extends Node


export(Array, Resource) var commands


func return_command(text) -> Command:
	var words: Array = text.split(" ")
	var command: Command = null
	for item in commands:
		for trigger in (item as Command).triggers:
			if trigger == words[0]:
				command = item
				break
	return command
