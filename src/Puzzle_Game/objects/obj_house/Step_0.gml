// house collision
if(mouse_x > x && mouse_x < x + sprite_width && mouse_y > y && mouse_y < y + sprite_height && mouse_check_button_pressed(1) && house_name == "javi" && obj_javi.action_complete){
	room_goto(rm_javi)
}

// store collision
if(mouse_x > x && mouse_x < x + sprite_width && mouse_y > y && mouse_y < y + sprite_height && mouse_check_button_pressed(1) && house_name == "store"){
	global.bones = obj_ziggy.bones
	room_goto(rm_store)
}