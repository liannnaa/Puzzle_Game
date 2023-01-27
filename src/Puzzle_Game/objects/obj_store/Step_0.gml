// if clicked
if(mouse_x > x && mouse_x < x + sprite_width && mouse_y > y && mouse_y < y + sprite_height && mouse_check_button_pressed(1)){
	obj_text_box.Activate_Text_Box("Price: " + string(price) + " bones (Press " + string(num) + " to buy)")
}

// if chosen
if(keyboard_check(ord(num)) && global.bones >= price){
	global.bones -= price
	item_add(item)
	instance_destroy()
}