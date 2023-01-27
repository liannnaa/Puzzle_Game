// if clicked
if(mouse_x > x && mouse_x < x + sprite_width && mouse_y > y && mouse_y < y + sprite_height && mouse_check_button_pressed(1)){
	if(action_complete){
		obj_text_box.Activate_Text_Box(complete_message)
		return
	}
	
	obj_text_box.Activate_Text_Box(start_message)
}

if(!action_complete){
	if(keyboard_check(ord("1"))){
		global.players = 2
		obj_text_box.Activate_Text_Box(yes_message)
		action_complete = true
		return
	}

	if(keyboard_check(ord("2"))){
		obj_text_box.Activate_Text_Box(no_message)
		action_complete = true
	}
}