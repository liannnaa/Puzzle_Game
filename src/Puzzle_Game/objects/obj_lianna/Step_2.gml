camera_set_view_pos(view_camera[0], x - view_width, y-view_height)

if(room != rm_battle || !obj_bailey.fighting){
	// move right
	if(keyboard_check(ord("D")) && x + sprite_width < room_width && !place_meeting(x + walk_speed+5, y, obj_dirt) && !place_meeting(x + walk_speed+5, y, obj_step1) && !place_meeting(x + walk_speed+5, y, obj_step2) && !place_meeting(x + walk_speed+5, y, obj_wall_v)){
		sprite_index = spr_lianna_right
		x += walk_speed
		return
	}

	// move left
	if(keyboard_check(ord("A")) && x > 0 && !place_meeting(x - walk_speed-5, y, obj_dirt) && !place_meeting(x - walk_speed-5, y, obj_step1) && !place_meeting(x - walk_speed-5, y, obj_step2) && !place_meeting(x - walk_speed-5, y, obj_wall_v)){
		sprite_index = spr_lianna_left
		x -= walk_speed
		return
	}
}

// controls if in house
if(room == rm_house || room == rm_javi || room = rm_end){
	// move up
	if(keyboard_check(ord("W")) && x > 0 && !place_meeting(x, y - walk_speed+5, obj_wall_h)){
		sprite_index = spr_lianna_back
		y -= walk_speed
		return
	}

	// move down
	if(keyboard_check(ord("S")) && y + sprite_height < room_height && !place_meeting(x, y + walk_speed+5, obj_wall_h)){
		sprite_index = spr_lianna_front
		y += walk_speed
		return
	}
}

if(sprite_index != spr_lianna_back || !place_meeting(x, y, obj_ladder)){
	sprite_index = spr_lianna_still
}