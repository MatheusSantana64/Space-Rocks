// Move up
if keyboard_check(vk_up) or keyboard_check(ord("W")){
    motion_add(90, spd);
}

// Move down
if keyboard_check(vk_down) or keyboard_check(ord("S")){
    motion_add(270, spd);
}

// Move left
if keyboard_check(vk_left) or keyboard_check(ord("A")){
    motion_add(180, spd);
}

// Move right
if keyboard_check(vk_right) or keyboard_check(ord("D")){
    motion_add(0, spd);
}

// Apply friction to gradually slow down
friction = 0.05;

// Limit maximum speed
if speed > 5 {
    speed = 5;
}

// Make image_angle follow mouse
image_angle = point_direction(x, y, mouse_x, mouse_y);

move_wrap(true, true, 0);

// Shooting
if mouse_check_button_pressed(mb_left){
    instance_create_layer(x, y, "Instances", obj_bullet)
	
	audio_play_sound(snd_shoot, 0, false, 1, 0, random_range(0.7, 1.3));
}