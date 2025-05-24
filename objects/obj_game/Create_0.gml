points = 0;

// Randomly select between the two songs
var selected_song = choose(snd_rocks, snd_space);

// Only start music if it's not already playing
if !audio_is_playing(selected_song) {
    audio_play_sound(selected_song, 0, true);
}