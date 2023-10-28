/// @description pair item check
// You can write your code in this editor

if (check_item != "_") {
	if (pair_item != check_item) {
		scr_message("I can't use " + string(check_item) + " on " + string(interactive_name));
	} else{
		event_user(11);
		ds_map_destroy(obj_pl.inv_hand);
		obj_pl.inv_hand = noone;
	}
}
check_item = "_";