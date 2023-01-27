// if clicked
if(mouse_x > x && mouse_x < x + sprite_width && mouse_y > y && mouse_y < y + sprite_height && mouse_check_button_pressed(1)){
	global.lianna_health = 20
	global.players = 1
	global.bones = 0
	global.ziggy_outfit = false
	obj_item_manager.inv = array_create(0)
	room_persistent = false
	room_goto(rm_house)
}