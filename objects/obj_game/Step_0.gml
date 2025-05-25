if keyboard_check_released(vk_escape) {
	room_goto(rm_menu);
	audio_stop_sound(snd_rocks);
	audio_play_sound(snd_space, 0, false);
	points = 0;
}