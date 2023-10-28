/// @description Insert description here
// You can write your code in this editor
var l = array_length_1d(obj.interactive_menu);
var h = 12 + (10 * l);

if (!mouse_in(x, y, x + 100, y + h)) {
	instance_destroy();
}

x = clamp(x, 2, room_width - 2 - 100);
y = clamp(y, 2, room_height - 2 - h);

//obj_pl.hover_name = obj.interactive_name;