// Spawn power-up
if (obj_game.powerup_time < 0) {
	var _obj = choose(obj_powerup_spread, obj_powerup_ghost);
	instance_create_layer(x, y, "Instances", _obj);
	obj_game.powerup_time = 20;
}


// Sound of rock being destroyed
audio_play_sound(snd_rockdestroy, 0, false, 1, 0, random_range(0.8, 1.2))

// Increase score
obj_game.points += 1;

instance_destroy(other); // Destroy bullet
effect_create_above(ef_explosion, x, y, 1, c_white); // Explosion effect

direction = random(360); // Change direction after being shot

// Turn big rock into 2 small rocks
if sprite_index == spr_rock_big {
	sprite_index = spr_rock_small;
	instance_copy(true);
}
// Only create more big rocks if there are less than 12 rocks
else if instance_number(obj_rock) < 12 {
	sprite_index = spr_rock_big;
	x = -100;
}
// Destroy the rock
else
{
	instance_destroy();
}