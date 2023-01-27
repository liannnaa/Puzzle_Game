if(room != rm_store){
	text = "Lianna HP: " + string(obj_lianna.hp)
}
else{
	text = "Bones: " + string(global.bones)
}
visible = true
active_timer = 0
active_duration = 180
show = false

function Activate_Text_Box(new_text){
	text = new_text
	show = true
}