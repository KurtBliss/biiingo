class_name CardCell
extends TextureRect

signal matched

func _ready():
	set_number()

func set_number(set : String = ref.numbers.get_number()):
	$Label.text = set


func _on_Button_pressed():
	if ref.numbers.number_valid($Label.text):
		$Label.text = "[ " + $Label.text + " ]"
		print("Match")
		emit_signal("matched")
	else:
		print("No match")
#	if name == ref
