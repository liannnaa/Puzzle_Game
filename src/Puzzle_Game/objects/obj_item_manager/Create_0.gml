depth = -9999

global.font = main_font

//item constructor
function create_item(_name, _desc, _spr, _effect) constructor{
	name = _name
	description = _desc
	sprite = _spr
	effect = _effect
}

//create the items
global.item_list = {
	
	sword: new create_item(
		"Sword",
		"It's a sword!",
		spr_sword_i,
		
		function(){
			if(room == rm_battle && instance_exists(obj_battle)){
				if(obj_battle.player_turn){
					obj_bailey.strength++
					obj_bailey.hp -= 2
					obj_text_box.Activate_Text_Box("Hmm...he lost health but he got stronger!")
					obj_battle.player_turn = false
				}
				else{
					obj_text_box.Activate_Text_Box("I can't use this here.")
				}
			}
			else{
				obj_text_box.Activate_Text_Box("I can't use this here.")
			}
		}
	),
	
	whipped_cream: new create_item(
		"Whipped Cream",
		"I love whipped cream!",
		spr_whipped_cream_i,
		
		function(){
			if(room == rm_battle && instance_exists(obj_battle)){
				if(obj_battle.player_turn){
					obj_bailey.strength -= 2
					obj_text_box.Activate_Text_Box("He's getting weaker!")
					obj_battle.player_turn = false
				}
				else{
					obj_text_box.Activate_Text_Box("I can't use this here.")
				}
			}
			else{
				obj_text_box.Activate_Text_Box("I can't use this here.")
			}
		}
	),
	
	key: new create_item(
		"Key",
		"I wonder what this unlocks.",
		spr_key_i,
		
		function(){
			if(instance_exists(obj_javi)){
				with(obj_javi){
					if(distance_to_object(obj_lianna) < 64){
						action_complete = true
						obj_text_box.Activate_Text_Box(item_message)
						object.visible = true
					}
					else{
						obj_text_box.Activate_Text_Box("Maybe I need to use this somewhere else.")
					}
				}
			
				if(obj_javi.action_complete){
					array_delete(inv, selected_item, 1)
				}
			}
			else{
				obj_text_box.Activate_Text_Box("Maybe I need to use this somewhere else.")
			}
		}	
	),
	
	water: new create_item(
		"Water",
		"It's WATER! I love water.",
		spr_water_i,
		
		function(){
			if(instance_exists(obj_charlize)){
				with(obj_charlize){
					if(distance_to_object(obj_lianna) < 64){
						action_complete = true
						obj_text_box.Activate_Text_Box(item_message)
						object.visible = true
					}
					else{
						obj_text_box.Activate_Text_Box("Maybe I need to use this somewhere else.")
					}
				}
			
				if(obj_charlize.action_complete){
					array_delete(inv, selected_item, 1)
				}
			}
			else{
				obj_text_box.Activate_Text_Box("Maybe I need to use this somewhere else.")
			}
		}
	),
	
	carrot: new create_item(
		"Carrot",
		"Healthy.",
		spr_carrot_i,
		
		function(){
			if(room == rm_battle && instance_exists(obj_battle)){
				if(obj_battle.player_turn){
					obj_bailey.strength--
					obj_text_box.Activate_Text_Box("He's calming down!")
					obj_battle.player_turn = false
				}
				else{
					obj_text_box.Activate_Text_Box("I can't use this here.")
				}
			}
		}
	),
	
	spray_bottle: new create_item(
		"Spray Bottle",
		"Woo!",
		spr_spray_bottle_i,
		
		function(){
			if(room == rm_battle && instance_exists(obj_battle)){
				if(obj_battle.player_turn){
					obj_bailey.strength += 2
					obj_bailey.hp--
					obj_text_box.Activate_Text_Box("That only made him crazier!")
					obj_battle.player_turn = false
				}
				else{
					obj_text_box.Activate_Text_Box("I can't use this here.")
				}
			}
			else{
				obj_lava.spray = true
				obj_text_box.Activate_Text_Box("Click on the lava to use this item.")
			}
		}
	),
	
	bucket: new create_item(
		"Bucket",
		"Perfect for water.",
		spr_bucket_i,
		
		function(){
			if(room == rm_main){
				with(obj_lianna){
					if(distance_to_object(obj_well) < 64){
						obj_text_box.Activate_Text_Box("I got water!")
					}
					else{
						obj_text_box.Activate_Text_Box("Maybe I need to use this somewhere else.")
						return
					}
				}
				array_delete(inv, selected_item, 1)
				item_add(global.item_list.water)
			}
			else{
				obj_text_box.Activate_Text_Box("Maybe I need to use this somewhere else.")
			}
		}
	),
		
	healing_potion: new create_item(
		"Healing Potion",
		"Adds 2 health!",
		spr_healing_potion_i,
		
		function(){
			if(room == rm_battle){
				obj_lianna.hp += 2
				obj_text_box.Activate_Text_Box("My health went up!")
				array_delete(inv, selected_item, 1)
			}
			else{
				obj_text_box.Activate_Text_Box("I can't use this here.")
			}
		}
	),
		
	pup_cup: new create_item(
		"Pup Cup",
		"Woof Woof Woof!",
		spr_pup_cup_i,
		
		function(){
			obj_text_box.Activate_Text_Box("That didn't even do anything!")
			array_delete(inv, selected_item, 1)
		}
	),
	
	outfit: new create_item(
		"Outfit",
		"Ziggy would look so cute in this.",
		spr_outfit_i,
		
		function(){
			global.ziggy_outfit = true
			obj_ziggy.sprite_index = spr_ziggy_right_outfit
			obj_text_box.Activate_Text_Box("He looks so handsome!")
			array_delete(inv, selected_item, 1)
		}
	),
}

// create the inventory
inv = array_create(0)
selected_item = -1

// for drawing and key positions
sep = 16
screen_bord = 16