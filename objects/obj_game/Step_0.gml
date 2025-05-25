if keyboard_check_released(vk_escape) {
	room_goto(rm_menu);
	audio_stop_sound(snd_rocks);
	audio_play_sound(snd_space, 0, false);
	points = 0;
}

powerup_time -= delta_time / 1000000; // -1 per second