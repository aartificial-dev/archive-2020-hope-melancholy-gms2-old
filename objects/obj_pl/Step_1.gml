/// @description Inventory
// You can write your code in this editor

hover_name = "";

if (mouse_y > 148) {
	inv_show = 1;
} else if (mouse_y < 131 && inv_show == 1) { // 68 - 51 = 17
	inv_show = 0;
	inv_close();
}

if (inv_show) {
	inv_step();
}

var camera = view_camera[0];
var mouse_gx = mouse_x - camera_get_view_x(camera);
var mouse_gy = mouse_y - camera_get_view_y(camera);
var _mb = mouse_check_button_pressed(mb_left);

if (point_in_rectangle(mouse_gx, mouse_gy, 311, 1, 318, 8) && _mb) {
	chp_show = 1 - chp_show;
}
if (chp_show) {
	chp_step();
}

if (point_in_rectangle(mouse_gx, mouse_gy, 0, 32, 320, 160 - 32) && _mb && ds_exists(inv_hand, ds_type_map)) {
	if (!interact_object) { // dropping item
		var _x = clamp(mouse_x, x - (hand_length - 10), x + (hand_length - 10));
		var _y = clamp(mouse_y, y, y + 16);
		var item = instance_create_layer(_x, _y, "L_Items", par_item);
		item.item = inv_hand;
		inv_hand = noone;
		audio_play_sound(snd_inv_drop, 0, 0);
	} else if (alarm[11] == -1 && distance_to_object(interact_object) < hand_length) { // combine item
		var _name = inv_hand[? "name"];
		with (interact_object) {
			check_item = _name;
			event_user(10);
		}
		alarm[11] = 15;
	} else if (alarm[11] == -1 && distance_to_object(interact_object) > hand_length){ // too far?
		scr_message("It's too far");
		alarm[11] = 15;
	}
}

