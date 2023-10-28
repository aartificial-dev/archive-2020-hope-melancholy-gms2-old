/// @description Insert description here
// You can write your code in this editor

if (is_dying) {
	if (scr_anim_get(anim.death) >= sprite_get_number(image_death)) {
		if (have_corpse) {
			var corpse = instance_create_layer(x, y, "L_Entities", obj_corpse);
			corpse.sprite_index = image_death;
			corpse.image_index = sprite_get_number(image_death) - 1;
			corpse.image_speed = 0;
			corpse.image_xscale = image_direction;
		}
		instance_destroy();
	}
}

hp = clamp(hp, 0, mhp);

/// Anim reset

if (image_idle_index >= sprite_get_number(image_idle)) {
	image_idle_index = 0;
}
if (image_custom_index >= sprite_get_number(image_custom)) {
	image_custom_index = 0;
}
if (image_walk_index >= sprite_get_number(image_walk)) {
	image_walk_index = 0;
}
if (image_taunt_index >= sprite_get_number(image_taunt)) {
	image_taunt_index = 0;
	is_attack = 0;
}
if (image_hit_index >= sprite_get_number(image_hit)) {
	image_hit_index = 0;
	is_hit = 0;
}
if (image_death_index >= sprite_get_number(image_death)) {
	image_death_index = 0;
}

if (image_taunt_index == attack_index) {
	event_user(14);
}
