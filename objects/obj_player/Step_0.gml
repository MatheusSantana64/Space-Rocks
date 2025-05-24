// Move forward
if keyboard_check(vk_up){
	motion_add(image_angle, 0.1);
}

// Turn left
if keyboard_check(vk_left){
	image_angle += 4;
}

// Turn right
if keyboard_check(vk_right){
	image_angle -= 4;
}

move_wrap(true, true, 0);