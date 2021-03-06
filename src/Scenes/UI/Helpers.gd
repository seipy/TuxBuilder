extends Node

func _get_scene():
	return get_tree().current_scene

func get_camera():
	return _get_scene().get_node("Camera2D")

func get_player():
	return _get_scene().get_node("Player")

func get_level():
	return _get_scene().get_node("Level")

func get_editor():
	return _get_scene().get_node("Editor")

func file_dialog(directory, filetype, save):
	var dialog = load("res://Scenes/UI/FileSelect.tscn").instance()
	dialog.set_name("FileSelect")
	dialog.directory = directory
	dialog.filetype = filetype
	dialog.save = save
	_get_scene().add_child(dialog)
