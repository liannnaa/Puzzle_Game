// if clicked
if(mouse_x > x && mouse_x < x + sprite_width && mouse_y > y && mouse_y < y + sprite_height && mouse_check_button_pressed(1) && visible){
	item_add(item)
	instance_destroy()
}