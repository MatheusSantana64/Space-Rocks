// Inherit the parent event
event_inherited();

room_goto(rm_game);

with(obj_game){
	audio_stop_sound(snd_space);
	audio_play_sound(snd_rocks, 0, false);
}