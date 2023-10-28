// y = 162
// 0: hand item 2 
// 1 - 5: items 48 + 34*i 
// 6 - 7 combine items 230  286 

var _pr_hand = inv_hand;

var camera = view_camera[0];
var mouse_gx = mouse_x - camera_get_view_x(camera);
var mouse_gy = mouse_y - camera_get_view_y(camera);

var _y1 = 1;
var _y2 = 11;
var _mb = mouse_check_button_pressed(mb_left) && !scr_hit_menu();
var _mr = mouse_check_button_pressed(mb_right) && !scr_hit_menu();
var _mx = mouse_x - camera_get_view_x(camera);

var _x1, _x2;

for (var i = 0; i < 5; i ++) {
	_x1 = 137 + (35 * i);
	_x2 = _x1 + 32;
	if (point_in_rectangle(mouse_gx, mouse_gy, _x1, _y1, _x2, _y2)) {
		if (_mb) {
			var swap = 0;
			if (ds_exists(inv_hand, ds_type_map)) {
				if (inv_hand[? "name"] == "Chip") {
					swap = 1;
				}
			} else if (inv_hand == noone) {
					swap = 1;
			}
			if (swap) {
				var temp = chp[| i];
				chp[| i] = inv_hand;
				inv_hand = temp;
			}
		}
		if (_mr && ds_exists(chp[| i], ds_type_map)) {
			var men = instance_create_layer(_mx - 15, mouse_y - 15, "L_Hud", obj_menu_item);
			men.item = chp[| i];
			men.slot = i;
		}
		var temp = chp[| i];
		if (ds_exists(temp, ds_type_map)) {
			hover_name = temp[? "name"];
		}
	}
}

if (inv_hand != _pr_hand) {
	if (audio_is_playing(snd_inv_chip)) {
		audio_stop_sound(snd_inv_chip);
	}
	audio_play_sound(snd_inv_chip, 0, 0);
}