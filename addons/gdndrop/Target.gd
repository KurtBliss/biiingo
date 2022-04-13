tool
extends TextureRect


func get_drag_data(_position):
#    var mydata = {"test": "hello world!"}
	var lab = Label.new()
	lab.text = "hello world!"
	set_drag_preview(lab)
	return "hello world!"



func can_drop_data_fw(position, data, from_control):
	return true
