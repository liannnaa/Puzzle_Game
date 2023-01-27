if(show){
	active_timer++
}
else{
	
	if(room != rm_store){
		text = "Lianna HP: " + string(obj_lianna.hp)
		if(instance_exists(obj_ziggy)){
			if(obj_ziggy.visible){
				ziggy_text = "\nZiggy HP: " + string(obj_ziggy.hp) + "          Ziggy Bones: " + string(obj_ziggy.bones) + "/" + string(obj_ziggy.max_bones)
				text += ziggy_text
			}
		}
	}
	else{
		text = "Bones: " + string(global.bones)
	}
}

if(show && active_timer > active_duration){
	show = false
	active_timer = 0
	
	if(room != rm_store){
		text = "Lianna HP: " + string(obj_lianna.hp)
		
		if(instance_exists(obj_ziggy)){
			if(obj_ziggy.visible){
				ziggy_text = "\nZiggy HP: " + string(obj_ziggy.hp) + "          Ziggy Bones: " + string(obj_ziggy.bones) + "/" + string(obj_ziggy.max_bones)
				text += ziggy_text
			}
		}
	}
	else{
		text = "Bones: " + string(global.bones)
	}
}