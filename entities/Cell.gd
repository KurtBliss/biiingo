class_name CardCell
extends TextureRect

func _ready():
	set_number()

func set_number(set:String=ref.get_number()):
	$Label.text = set
