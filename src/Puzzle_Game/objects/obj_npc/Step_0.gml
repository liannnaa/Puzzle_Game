// if clicked
if(mouse_x > x && mouse_x < x + sprite_width && mouse_y > y && mouse_y < y + sprite_height && mouse_check_button_pressed(1)){
	if(action_complete){
		obj_text_box.Activate_Text_Box(complete_message)
		return
	}
	obj_text_box.Activate_Text_Box(start_message)
}