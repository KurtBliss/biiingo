# ref.gd
# This auto load will be used for referencing nodes!
extends Node

# TODO: Move to Global or Main autoload
func get_number() -> String:
	return str(1+(randi()%75))
