/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(obj_pl)) {
	instance_destroy();
}

var l = array_length_1d(menu);
var h = 12 + (10 * l);

var camera = view_camera[0];
var _mx = mouse_x - camera_get_view_x(camera);

if (!point_in_rectangle(_mx, mouse_y, x, y, x + 100, y + h)) {
	instance_destroy();
}

x = clamp(x, 2, 318 - 100);
y = clamp(y, 2, room_height - 2 - h);

//obj_pl.hover_name = obj.interactive_name;