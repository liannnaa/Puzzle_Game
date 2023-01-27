// door collision
if(place_meeting(x, y, obj_door)){
	room_goto(rm_main)
}

// lava collision
if(place_meeting(x, y, obj_lava)){
	hp = 0
}

// enemy collision
if(place_meeting(x, y, obj_ducky)&& !invincible){
	hp--
	invincible = true
	invincible_timer = 0
}

// bailey collision
if(place_meeting(x, y, obj_bailey) && room != rm_battle){
	room_persistent = false
	global.lianna_health = hp
	room_goto(rm_battle)
}

// end house collision
if(place_meeting(x, y, obj_house) && instance_nearest(x, y, obj_house).house_name == "end"){
	obj_item_manager.inv = array_create(0)
	room_goto(rm_end)
}

// leave house
if(room == rm_javi && y + sprite_height >= room_height){
	room_goto(rm_main)
}

// dead
if(hp <= 0){
	room_persistent = false
	global.lianna_health = 20
	global.players = 1
	global.bones = 0
	global.ziggy_outfit = false
	obj_item_manager.inv = array_create(0)
	room_goto(rm_house)
}

if(invincible){
	invincible_timer += 1
	if(invincible_timer > 60){
		invincible = false
	}
}