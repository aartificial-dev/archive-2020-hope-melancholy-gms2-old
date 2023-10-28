/// @description Insert description here
// You can write your code in this editor

var _fmod = 2;

var camera = view_camera[0];
var xprev = x;
x = x - camera_get_view_x(camera);

draw_self();

draw_set_font_ext(font_pixel, fa_left, fa_middle);
var name = obj.interactive_name;
var menu = obj.interactive_menu;
var acti = obj.interactive_avalable;
var l = array_length_1d(obj.interactive_menu);

draw_text_color(x + 2, y + 7 + _fmod, name, c_black, c_black, c_black, c_black, 1);

for (var i = 0; i < l; i ++) {
	var _x = x + 14;
	var _y = y + 12 + (10 * i);
	draw_sprite(spr_menu_i, 0, x, _y);
	if (mouse_y > (_y) && mouse_y < (_y + 10)) {
		draw_set_alpha(0.5);
		draw_rectangle_color(x + 11, y + 12 + (10 * i), x + 98, y + 20 + (10 * i), c_black, c_black, c_black, c_black, 0);
		draw_set_alpha(1);
		if (mouse_check_button_pressed(mb_left) && alarm[0] == -1) {
			if (acti[i]) {
				with (obj) {event_user(i);}
				instance_destroy();
			}
		}
	}
	if (! acti[i]) {
		draw_text_color(_x, _y + 6 + _fmod, menu[i], c_black, c_black, c_black, c_black, 0.5);
	} else {
		draw_text_color(_x, _y + 6 + _fmod, menu[i], c_black, c_black, c_black, c_black, 1);
	}
}

x = xprev;