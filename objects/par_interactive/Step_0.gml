/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_pl)) {
	interactive_avalable[0] = (point_distance(x, y, obj_pl.x, obj_pl.y) < obj_pl.hand_length);
}