/// @description Insert description here
// You can write your code in this editor

view_width = 320;
view_height = 160;

window_scale = 4;

window_set_size(view_width * window_scale, view_height * window_scale);
alarm[0] = 1;
surface_resize(application_surface, view_width * window_scale, view_height * window_scale);

draw_set_font(font_pixel);

display_set_gui_size(view_width, view_height);

shake_amount = 0;
shake_type = 0;