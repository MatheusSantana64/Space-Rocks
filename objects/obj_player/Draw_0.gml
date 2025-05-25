draw_self();

// Draw powerup remaining time
if (alarm[0] > 0) {
	draw_set_halign(fa_center);
	var _time = round(alarm[0] / 60); // Convert from frames to seconds
	draw_text(x, y - 60, _time);
	draw_set_halign(fa_left); //Reset
}	