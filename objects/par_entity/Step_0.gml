/// @description Insert description here
// You can write your code in this editor


/// Moving stuff

is_move = (move != 0);

if (is_attack) {
	move = 0;
}

if (is_dying || is_hit) {
	var xto = x - image_direction / 3;
	if (!place_meeting(xto, y, obj_unwalkable)) {
		x = xto;
	}
	move = 0;
}

if (move != 0) {
	spd += vel;
	spd = min(spd, mspd);
	image_direction = move;
} else {
	spd /= 1.5;
}
if (!place_meeting(x + (move * spd), y, obj_unwalkable)) {
	x += move * spd;
}


if (image_direction == 0) {
	image_direction = 1;
}


/// Animation stuff
if (is_player) {exit;}

if (is_dying) {
	image_death_index += animation_speed * image_death_speed;
	scr_anim_set_all_exc(anim.death, 0);
} else if (is_hit) {
	image_hit_index += animation_speed * image_hit_speed;
	scr_anim_set_all_exc(anim.hit, 0);
} else if (is_attack) {
	image_taunt_index += animation_speed * image_taunt_speed;
	scr_anim_set_all_exc(anim.taunt, 0);
} else if (is_move) {
	image_walk_index += animation_speed * image_walk_speed;
	scr_anim_set_all_exc(anim.walk, 0);
} else if (is_custom) {
	image_custom_index += animation_speed * image_custom_speed;
	scr_anim_set_all_exc(anim.custom, 0);
} else {
	image_idle_index += animation_speed * image_idle_speed;
	scr_anim_set_all_exc(anim.idle, 0);
}

