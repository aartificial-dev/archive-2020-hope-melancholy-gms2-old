var drop_weapon = (ds_exists(inv[| 0], ds_type_map) && !have_gun && !have_tube);
if (ds_exists(inv[| 2], ds_type_map) || ds_exists(inv[| 1], ds_type_map) || drop_weapon) {
	audio_play_sound(snd_inv_drop, 0, 0);
}

if (ds_exists(inv[| 1], ds_type_map)) {
		var _x = obj_pl.x - (hand_length / 2);
		var _y = obj_pl.y;
		var item = instance_create_layer(_x, _y, "L_Items", par_item);
		item.item = inv[| 1];
		inv[| 1] = noone;
}

if (ds_exists(inv[| 2], ds_type_map)) {
		var _x = obj_pl.x + (hand_length / 2);
		var _y = obj_pl.y;
		var item = instance_create_layer(_x, _y, "L_Items", par_item);
		item.item = inv[| 2];
		inv[| 2] = noone;
}

if (drop_weapon) {
		var _x = obj_pl.x;
		var _y = obj_pl.y;
		var item = instance_create_layer(_x, _y, "L_Items", par_item);
		item.item = inv[| 0];
		inv[| 0] = noone;
		scr_message("I can't use " + string(item.item[? "name"]) + " as weapon")
}

inv_comb_c = 0;