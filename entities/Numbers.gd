class_name Numbers
extends HBoxContainer

onready var previous = $BallPrevious/Label
onready var current = $BallCurrent/Label
onready var next = $BallNext/Label
onready var animation = $AnimationPlayer

func _ready():
	ref.numbers = self
	previous.text = ""
	current.text = get_number()
	next.text = get_number()

func _on_Timer_timeout():
	previous.text = current.text
	current.text = next.text
	next.text = get_number()
	animation.play("Next")

func get_number() -> String:
	return str(1+(randi()%75))
