/// @arg left_item
/// @arg right_item
var i_l = ["Battery"];
var i_r = ["Broken Player"];
var res = [obj_tplayer];
var nam = ["Tape Player"];

var item_l = argument0;
var item_r = argument1;
for (var i = 0; i < array_length_1d(i_l); i ++) {
	if ( (item_l[? "name"] == i_l[i] && item_r[? "name"] == i_r[i]) ||
			 (item_l[? "name"] == i_r[i] && item_r[? "name"] == i_l[i]) ) {
		instance_create_layer(x, y, "L_Items", res[i]);
		scr_message("I got " + string(nam[i]));
		ds_map_destroy(item_l);
		ds_map_destroy(item_r);
		audio_play_sound(snd_inv_combine, 0, 0);
		return true;
	}
}

scr_message("Can't combine " + string(item_l[? "name"]) + " with " + string(item_r[? "name"]));
return false;