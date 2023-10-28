/// @description Hit detect
// Use hit_object_x _y
if (is_dying) exit;
if (hit_object_x < x) {
	image_direction = -1;
} else {
	image_direction = 1;
}

is_dying = 1;
audio_play_at(snd_monster_death, x, y, 150, 1, 0, 0);