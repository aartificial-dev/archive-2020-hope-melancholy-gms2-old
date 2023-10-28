/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor
acti = [item[? "can_use"], 1];

var l = array_length_1d(menu);


for (var i = 0; i < l; i ++) {
	var _y = y + 12 + (10 * i);
	if (mouse_y > (_y) && mouse_y < (_y + 10)) {
		if (mouse_check_button_pressed(mb_left) && alarm[0] == -1) {
			if (acti[i]) {
				switch (i) {
					case 0: 
							if (script_exists(item[? "use"]) && item[? "can_use"]) {
							item[? "use_amount"] --;
							script_execute(item[? "use"], item[? "script_arg"]);
							if (item[? "use_amount"] == 0) {
								ds_map_destroy(item);
								obj_pl.inv[| slot] = noone;
							}
						}
					break;
					case 1: 
						script_execute(item[? "inspect"], item);
					break;
				}
				instance_destroy();
			}
		}
	}
}