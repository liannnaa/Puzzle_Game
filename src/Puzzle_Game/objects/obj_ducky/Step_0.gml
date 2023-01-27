if(left){
	if(steps < max_steps){
		x -= move
		steps++
		return
	}
	steps = 0
	left = false
	image_index = 1
	return
}

if(steps < max_steps){
	x += move
	steps++
	return
}

steps = 0
left = true
image_index = 0