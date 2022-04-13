class_name Numbers
extends HBoxContainer

onready var previous = $BallPrevious/Label
onready var current = $BallCurrent/Label
onready var next = $BallNext/Label
onready var animation = $AnimationPlayer
var numbers = []

func _ready():
	ref.numbers = self
	previous.text = ""
	current.text = get_number()
	numbers.append(current.text)
	next.text = get_number()
	numbers.append(next.text)

func _on_Timer_timeout():
	previous.text = current.text
	current.text = next.text
	next.text = get_number()
	numbers.append(next.text)
	animation.play("Next")

func get_number() -> String:
	return str(1+(randi()%75))

func number_valid(numb):
	prints(numb, numbers)
	if numbers.has(numb):
		return true
	return false


