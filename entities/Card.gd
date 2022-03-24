class_name CardContainer
extends CenterContainer

onready var nd_body := $Card/Body

var cells = []

func _ready():
	for cell in nd_body.get_children():
		cells.append({
			"node": cell,
			"name": cell.name,
			"letter": cell.name.substr(0,1),
			"number": cell.name.substr(1)
		})
	
	print("test...")
