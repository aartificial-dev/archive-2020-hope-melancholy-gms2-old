/// @description Insert description here
// You can write your code in this editor

var alpha = 1;
if (alarm[0] > 0) {
	alpha = 1 - alarm[0]/60;
	y -= (20 / 60);
}
if (alarm[2] > 0) {
	alpha = alarm[2]/15;
	y -= (5 / 15);
}

draw_set_font_ext(font_message, fa_center, fa_bottom);
var sep = string_height("W");
var w = string_width_ext(text, sep, 140) * 0.8;
var h = string_height_ext(text, sep, 140) * 0.8;

if (instance_exists(obj_pl)) {
	x = obj_pl.x + (30 * 0.8);
}

if (x + w/2 > room_width) {
	x = room_width - w/2;
}
if (x < w/2) {
	x = w/2;
}

draw_set_alpha(0.5 * alpha);
draw_rectangle_color(x - w/2, y + 2, x + w/2, y - h, c_black, c_black, c_black, c_black, 0); 
draw_set_alpha(1);

draw_text_ext_transformed_colour(x, y, text, sep, 140, 0.8, 0.8, 0, c_white, c_white, c_white, c_white, alpha);