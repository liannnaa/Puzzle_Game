// get selected item
selected_item = -1

for(var i = 0; i < array_length(inv); i++){
	
	var _xx = camera_get_view_x(view_camera[0]) + screen_bord
	var _yy = camera_get_view_y(view_camera[0]) + screen_bord + sep*i
	
	if(mouse_x > _xx && mouse_x < _xx+32 && mouse_y > _yy && mouse_y < _yy+8){
		selected_item = i
		if(mouse_check_button_pressed(1) && selected_item != -1){
			inv[selected_item].effect()
		}
	}
}