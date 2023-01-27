// if clicked
if(mouse_x > x && mouse_x < x + sprite_width && mouse_y > y && mouse_y < y + sprite_height && mouse_check_button_pressed(1)){
	if(spray){
		instance_destroy(instance_nearest(mouse_x, mouse_y, obj_lava))
		obj_text_box.Activate_Text_Box("It's working!")
		return
	}
	
	obj_text_box.Activate_Text_Box("I don't wanna go anywhere near this lava.")
}