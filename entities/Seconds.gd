class_name Seconds
extends Label
export(NodePath) onready var np_timer
onready var nd_timer : Timer = get_node(np_timer)

func _process(delta):
	pass
	pass
	pass

func _on_Tick_timeout():
	text = str(ceil(nd_timer.get_time_left()))
