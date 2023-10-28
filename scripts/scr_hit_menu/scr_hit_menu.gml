if (instance_exists(obj_menu)) {
	with (obj_menu) {
		var l = array_length_1d(obj.interactive_menu);
		var h = 17 + (14 * l);

		if (mouse_in(x, y, x + 105, y + h)) {
			return true;
		}
	}
}

if (instance_exists(obj_menu_item)) {
	with (obj_menu_item) {
		var camera = view_camera[0];
		var _mx = mouse_x - camera_get_view_x(camera);
		var l = array_length_1d(menu);
		var h = 17 + (14 * l);

		if (point_in_rectangle(_mx, mouse_y, x, y, x + 105, y + h)) {
			return true;
		}
	}
}

if (instance_exists(obj_note)) {
	return true;
}

return false;