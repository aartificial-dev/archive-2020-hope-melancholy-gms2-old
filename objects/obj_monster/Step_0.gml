/// @description Insert description here
// You can write your code in this editor

event_inherited();

move = 0;

if (instance_exists(obj_pl) && !is_attack) {

	if (distance_to_object(obj_pl) < 25) {
		if (obj_pl.x > x) {
			move = -1;
			image_direction = 1;
		} else {
			move = 1;
			image_direction = -1;
		}
	}
	if (distance_to_object(obj_pl) < 60 && distance_to_object(obj_pl) > 25) {
		if (obj_pl.x < x) {
			move = -1;
		} else {
			move = 1;
		}
	}
	
	if (distance_to_object(obj_pl) < 38 && alarm[9] == -1) {
		if (obj_pl.x < x) {
			image_direction = -1;
		} else {
			image_direction = 1;
		}
		is_attack = 1;
		audio_play_at(snd_monster_attack, x, y, 150, 1, 0, 0);
		alarm[9] = 40;
	}
}

