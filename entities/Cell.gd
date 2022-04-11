class_name CardCell
extends TextureRect

func _ready():
	set_number()

func set_number(set : String = ref.numbers.get_number()):
	$Label.text = set
