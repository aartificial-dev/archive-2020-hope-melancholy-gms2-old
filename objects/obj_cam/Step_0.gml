/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(obj_pl)) {
	instance_destroy();
}
var camera = view_camera[0];
x = merge(x, obj_pl.xprevious, 0.05);
x = merge(x, mouse_x, 0.005);
x = clamp(x, 0 +  (view_width / 2), room_width -  (view_width / 2));

if (shake_amount) {
	switch (shake_type) {
		case cam_shake.left: 
			x -= shake_amount;
		break;
		case cam_shake.right:
			x += shake_amount;
		break;
		case cam_shake.both:
			x += sin(current_time/10) * shake_amount;
		break;
	}
}

y = 0;
//camera_set_view_pos(camera, floor(x - (view_width / 2)), y);
camera_set_view_pos(camera, round(x - (view_width / 2)), y);
camera_set_view_size(camera, view_width, view_height);

//window_mouse_set(clamp(window_mouse_get_x(),0,window_get_width()),clamp(window_mouse_get_y(),0,window_get_height()));