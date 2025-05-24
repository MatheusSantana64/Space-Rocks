// Move up
if keyboard_check(vk_up) or keyboard_check(ord("W")){
    motion_add(90, 0.5);
}

// Move down
if keyboard_check(vk_down) or keyboard_check(ord("S")){
    motion_add(270, 0.5);
}

// Move left
if keyboard_check(vk_left) or keyboard_check(ord("A")){
    motion_add(180, 0.5);
}

// Move right
if keyboard_check(vk_right) or keyboard_check(ord("D")){
    motion_add(0, 0.5);
}

// Apply friction to gradually slow down
friction = 0.1;

// Limit maximum speed
if speed > 8 {
    speed = 8;
}

// Make image_angle follow mouse
image_angle = point_direction(x, y, mouse_x, mouse_y);

move_wrap(true, true, 0);

// Shooting
if mouse_check_button_pressed(mb_left){
    instance_create_layer(x, y, "Instances", obj_bullet)
}