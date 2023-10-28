// y = 162
// 0: hand item 2 
// 1 - 5: items 48 + 34*i 
// 6 - 7 combine items 230  286 

var _pr_hand = inv_hand;

var camera = view_camera[0];
var mouse_gx = mouse_x - camera_get_view_x(camera);
var mouse_gy = mouse_y - camera_get_view_y(camera);

var _y1 = 160 - 18;
var _y2 = 160 - 2;
var _mb = mouse_check_button_pressed(mb_left) && !scr_hit_menu();
var _mr = mouse_check_button_pressed(mb_right) && !scr_hit_menu();
var _mx = mouse_x - camera_get_view_x(camera);

var _x1, _x2;

_x1 = 2;
_x2 = _x1 + 32; 
if (point_in_rectangle(mouse_gx, mouse_gy, _x1, _y1, _x2, _y2)) {
	if (_mb) {
		var temp = inv[| 0];
		inv[| 0] = inv_hand;
		inv_hand = temp;
	}
	if (_mr && ds_exists(inv[| 0], ds_type_map)) {
		var men = instance_create_layer(_mx - 15, mouse_y - 15, "L_Hud", obj_menu_item);
		men.item = inv[| 0];
		men.slot = 0;
	}
	var temp = inv[| 0];
	if (ds_exists(temp, ds_type_map)) {
		hover_name = temp[? "name"];
	}
}

for (var i = 3; i < 8; i ++) {
	_x1 = 48 + (34 * (i - 3));
	_x2 = _x1 + 32;
	if (point_in_rectangle(mouse_gx, mouse_gy, _x1, _y1, _x2, _y2)) {
		if (_mb) {
			var temp = inv[| i];
			inv[| i] = inv_hand;
			inv_hand = temp;
		}
		if (_mr && ds_exists(inv[| i], ds_type_map)) {
			var men = instance_create_layer(_mx - 15, mouse_y - 15, "L_Hud", obj_menu_item);
			men.item = inv[| i];
			men.slot = i;
		}
		var temp = inv[| i];
		if (ds_exists(temp, ds_type_map)) {
			hover_name = temp[? "name"];
		}
	}
	
}

_x1 = 230;
_x2 = _x1+ 32; 
if (point_in_rectangle(mouse_gx, mouse_gy, _x1, _y1, _x2, _y2)) {
	if (_mb) {
		var temp = inv[| 1];
		inv[| 1] = inv_hand;
		inv_hand = temp;
	}
		if (_mr && ds_exists(inv[| 1], ds_type_map)) {
		var men = instance_create_layer(_mx - 15, mouse_y - 15, "L_Hud", obj_menu_item);
		men.item = inv[| 1];
		men.slot = 1;
	}
	var temp = inv[| 1];
	if (ds_exists(temp, ds_type_map)) {
		hover_name = temp[? "name"];
	}
}

_x1 = 286;
_x2 = _x1+ 32; 
if (point_in_rectangle(mouse_gx, mouse_gy, _x1, _y1, _x2, _y2)) {
	if (_mb) {
		var temp = inv[| 2];
		inv[| 2] = inv_hand;
		inv_hand = temp;
	}
		if (_mr && ds_exists(inv[| 2], ds_type_map)) {
		var men = instance_create_layer(_mx - 15, mouse_y - 15, "L_Hud", obj_menu_item);
		men.item = inv[| 2];
		men.slot = 2;
	}
	var temp = inv[| 2];
	if (ds_exists(temp, ds_type_map)) {
		hover_name = temp[? "name"];
	}
}

if (ds_exists(inv[| 1], ds_type_map) && ds_exists(inv[| 2], ds_type_map) && inv_comb_c == 0) {
	if (inv_combine(inv[| 1], inv[| 2])) {
		inv[| 1] = noone;
		inv[| 2] = noone;
	}
	inv_comb_c = 1;
} else if (! (ds_exists(inv[| 1], ds_type_map) && ds_exists(inv[| 2], ds_type_map))) {
	inv_comb_c = 0;
}

if (inv_hand != _pr_hand) {
	audio_play_sound(snd_inv_pickup, 0, 0);
}