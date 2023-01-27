if(fighting){
	if(hp <= 0){
		instance_destroy()
		obj_text_box.Activate_Text_Box("I can pass now!")
		fighting = false
	}

	if(strength <= 0){
		obj_bailey.image_index = 2
		obj_text_box.Activate_Text_Box("Wait he's kinda cute now! I can pass!")
		fighting = false
	}
}