if(!obj_bailey.fighting){
	instance_destroy()
	return
}

if(!player_turn){
	bailey_timer++
	obj_bailey.image_index = 1
	if(bailey_timer > bailey_duration){
		obj_text_box.Activate_Text_Box("WOOF WOOF")
		obj_bailey.image_index = 0
		obj_lianna.hp -= obj_bailey.strength
		player_turn = true
		bailey_timer = 0
	}
}

text = "Lianna HP: " + string(obj_lianna.hp) + "\nBailey HP: " + string(obj_bailey.hp) + "\nBailey Strength: " + string(obj_bailey.strength)