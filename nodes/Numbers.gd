class_name Numbers
extends HBoxContainer

onready var previous = $BallPrevious/Label
onready var current = $BallCurrent/Label
onready var next = $BallNext/Label
onready var animation = $AnimationPlayer

func _ready():
	previous.text = ""
	current.text = ref.get_number()
	next.text = ref.get_number()

func _on_Timer_timeout():
	previous.text = current.text
	current.text = next.text
	next.text = ref.get_number()
	animation.play("Next")
	
