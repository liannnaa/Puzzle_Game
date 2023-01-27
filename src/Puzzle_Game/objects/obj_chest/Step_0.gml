// if clicked
if(mouse_x > x && mouse_x < x + sprite_width && mouse_y > y && mouse_y < y + sprite_height && mouse_check_button_pressed(1)){
	if(action_complete){
		obj_text_box.Activate_Text_Box("This chest is empty.")
		return
	}

	obj_text_box.Activate_Text_Box("There's some items in this chest!")
	if(instance_exists(obj_key)){
		obj_key.visible = true
	}
	if(instance_exists(obj_whipped_cream)){
		obj_whipped_cream.visible = true
	}
	action_complete = true
}