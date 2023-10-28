/// @arg sprite
/// @arg subimg
/// @arg x
/// @arg y
/// @arg xscale
/// @arg yscale
/// @arg rot
/// @arg color
/// @arg alpha


if (!instance_exists(obj_light_system)) {return;}
if (!surface_exists(obj_light_system.surface_light)) {return;}

surface_set_target(obj_light_system.surface_light);
	gpu_set_blendmode(bm_subtract);
		draw_sprite_ext(argument0, argument1, argument2 - cam_x(), argument3 - cam_y(), argument4, argument5, argument6, argument7, argument8);
	gpu_set_blendmode(bm_normal);
surface_reset_target();