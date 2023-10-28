/// @description Insert description here
// You can write your code in this editor
var alpha = 1;

if (alarm[0] != -1) {
	alpha = alarm[0]/60;
}

draw_set_alpha(alpha);
draw_rectangle_color(x, y, x + (16 * image_xscale), y + (16 * image_yscale), c_black, c_black, c_black, c_black, 0);
draw_set_alpha(1);