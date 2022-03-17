tool
class_name GoGun
extends EditorPlugin

var plugin_name := "gogun"
const MainPanel := preload("res://addons/gogungun/Control.tscn")
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

#func _input(event):
#	if not event is InputEventMouseButton:
#		return
#
#	if not event.pressed:
#		return
#
#	print("clicked via _input")

