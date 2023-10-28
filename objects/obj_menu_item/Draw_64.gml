/// @description Insert description here
// You can write your code in this editor

var _fmod = 2;

draw_self();

draw_set_font_ext(font_pixel, fa_left, fa_middle);
var name = item[? "name"];
var l = array_length_1d(menu);

draw_text_color(x + 2, y + 7 + _fmod, name, c_black, c_black, c_black, c_black, 1);

for (var i = 0; i < l; i ++) {
	var _x = x + 14;
	var _y = y + 12 + (10 * i);
	draw_sprite(spr_menu_i, 0, x, _y);
	if (mouse_y > (_y) && mouse_y < (_y + 10)) {
		draw_set_alpha(0.5);
		draw_rectangle_color(x + 11, y + 12 + (10 * i), x + 98, y + 20 + (10 * i), c_black, c_black, c_black, c_black, 0);
		draw_set_alpha(1);
	}
	if (! acti[i]) {
		draw_text_color(_x, _y + 6 + _fmod, menu[i], c_black, c_black, c_black, c_black, 0.5);
	} else {
		draw_text_color(_x, _y + 6 + _fmod, menu[i], c_black, c_black, c_black, c_black, 1);
	}
}