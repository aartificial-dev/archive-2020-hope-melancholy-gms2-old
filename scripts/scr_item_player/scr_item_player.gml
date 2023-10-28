var i = argument0;
if (!audio_is_playing(snd_tape_play)) {
	audio_play_sound(snd_tape_play, 0, 0);
} else {
	audio_stop_sound(snd_tape_play);
}