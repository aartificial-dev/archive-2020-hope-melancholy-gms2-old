/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (!ds_exists(item, ds_type_map)) {
	instance_destroy();
}

sprite_index = item[? "drop"];
if (instance_exists(obj_pl)) {
	interactive_avalable[0] = (point_distance(x, y, obj_pl.x, obj_pl.y) < obj_pl.hand_length) && item[? "can_use"];
	interactive_avalable[2] = (point_distance(x, y, obj_pl.x, obj_pl.y) < obj_pl.hand_length);
}
interactive_name = item[? "name"];


if (y < 120 && !place_meeting(x, y + yvel, par_item)) {
	y += yvel;
	yvel += 0.2;
	yvel = min(yvel, 1);
}