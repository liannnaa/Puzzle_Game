// bone collision
if(place_meeting(x, y, obj_bone)){
	bones++
	instance_destroy(instance_nearest(x, y, obj_bone))
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

// leave store
if(room == rm_store && y + sprite_height >= room_height){
	global.bones = bones
	room_goto(rm_main)
}

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