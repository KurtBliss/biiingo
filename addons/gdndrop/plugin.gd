tool
extends EditorPlugin

var plugin_name := "GdAndDrop"
const MainPanel := preload("res://addons/gdndrop/GdAndDrop.tscn")
var panel_instance : Control

func _enter_tree():
	panel_instance = MainPanel.instance()
	add_control_to_dock(DOCK_SLOT_RIGHT_UR, panel_instance)
	make_visible(false)

func _exit_tree():
	panel_instance.queue_free()

func has_main_screen():
	return false

func make_visible(visible):
	pass

func get_plugin_name():
	return plugin_name
