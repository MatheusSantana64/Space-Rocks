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