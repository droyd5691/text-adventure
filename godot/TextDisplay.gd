extends Control


onready var rich_text_label: RichTextLabel = $ScrollContainer/RichTextLabel


func display_error(error_message) -> void:
	rich_text_label.newline()
	rich_text_label.add_text(error_message)


func display_update(update) -> void:
	rich_text_label.newline()
	rich_text_label.add_text(update)
