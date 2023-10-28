/// @description Hit detect
// Use hit_object_x _y
if (hit_object_y < y - 12) {
	scr_message("Headshot");
	hp -= 4 * hit_object_dmod;
} else if (hit_object_y > y + 6){
	scr_message("Legs");
	hp -= 1 * hit_object_dmod;
} else {
	scr_message("Body");
	hp -= 2 * hit_object_dmod;
}

is_hit = 1;

if (hit_object_x < x) {
	image_direction = -1;
} else {
	image_direction = 1;
}

if (hp < 0) {
	is_dying = 1;
	//instance_create_layer(x, y, "L_Items", obj_ammo);
}