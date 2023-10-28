/// @description Insert description here
// You can write your code in this editor


if (checked == 0) {
	for (var i = 0; i < dist; i ++) {
		var xc = x + lendir_x(i, 0, dir + d);
		var yc  = y + lendir_y(i, 0, dir + d);
		var obj = collision_point(xc, yc, par_collision, 0, 1);
		if (instance_exists(obj)) {
			dist = i;
			with (obj) {
				hit_object_x = xc; 
				hit_object_y = yc;
				hit_object_dmod = 3;
				event_user(15);
			}
			var splash = instance_create_layer(xc, yc, "L_Back_Objects", obj_splash);
			splash.dir = (dir + d) - 180;
		}
	}
	checked = 1;
}

draw_set_alpha(0.3);
var i = (dist) * (1 - alarm[0] / 4);
var xfr = x + lendir_x(i, 0, dir + d);
var yfr = y + lendir_y(i, 0, dir + d);
var xto = x + lendir_x(dist, 0, dir + d);
var yto = y + lendir_y(dist, 0, dir + d);

draw_line_width_color(xfr, yfr, xto, yto, 2, c_yellow, c_yellow);
draw_set_alpha(1);