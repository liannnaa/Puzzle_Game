if(room == rm_store){
	camera_set_view_pos(view_camera[0], x - view_width, y-view_height)
}

if(room != rm_battle || !obj_bailey.fighting){
	// move right
	if(keyboard_check(vk_right) && x + sprite_width < room_width && !place_meeting(x + walk_speed+5, y, obj_dirt) && !place_meeting(x + walk_speed+5, y, obj_step1) && !place_meeting(x + walk_speed+5, y, obj_step2) && !place_meeting(x + walk_speed+5, y, obj_wall_v)){
		if(global.ziggy_outfit){
			sprite_index = spr_ziggy_right_outfit
		}
		else{
			sprite_index = spr_ziggy_right
		}
		image_speed = .25
		x += walk_speed
		return
	}

	// move left
	if(keyboard_check(vk_left) && x > 0 && !place_meeting(x - walk_speed-5, y, obj_dirt) && !place_meeting(x - walk_speed-5, y, obj_step1) && !place_meeting(x - walk_speed-5, y, obj_step2) && !place_meeting(x - walk_speed-5, y, obj_wall_v)){
		if(global.ziggy_outfit){
			sprite_index = spr_ziggy_left_outfit
		}
		else{
			sprite_index = spr_ziggy_left
		}
		image_speed = .25
		x -= walk_speed
		return
	}
}

image_speed = 0
image_index = 1

