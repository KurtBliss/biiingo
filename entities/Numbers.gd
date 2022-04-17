class_name Numbers
extends HBoxContainer

onready var previous = $BallPrevious/Label
onready var current = $BallCurrent/Label
onready var next = $BallNext/Label
onready var animation = $AnimationPlayer
onready var avaible_numbers = get_avaible_numbers()
var numbers = []

func _ready():
	ref.numbers = self
	previous.text = ""
	current.text = get_number()
	numbers.append(current.text)
	next.text = get_number()
	numbers.append(next.text)

func _on_Timer_timeout():
	if  avaible_numbers.size() == 0:
		print("FINISH")
		return 
	previous.text = current.text
	current.text = next.text
	next.text = get_number()
	numbers.append(next.text)
	animation.play("Next")
	

func get_number() -> String:
	if  avaible_numbers.size() == 0:
		return ""
	var index = randi() % avaible_numbers.size()
	var numb = avaible_numbers[index]
	avaible_numbers.pop_at(index)
	return str(numb)

func number_valid(numb):
	prints(numb, numbers)
	if numbers.has(numb):
		return true
	return false

func get_avaible_numbers():
	var numbers = []
	for i in 75:
		numbers.append(i+1)
	return numbers



