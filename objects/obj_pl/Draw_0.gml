/// @description Draw
// You can write your code in this editor

if (move != 0) {
	draw_sprite_ext(spr_pl_walk, image_walk_index, x, y, image_direction, 1, 0, c_white, 1);
} else if (keyboard_check(vk_shift) || is_attack) {
	if (have_gun) {
		var _x = x + ((- 4) * image_direction);
		var _y = y - 8;
		var dir = point_direction(_x, _y, mouse_x, mouse_y);
		var _flip; if (dir > 90 && dir < 270) {_flip = -1;} else {_flip = 1;}
		draw_sprite_ext(spr_pl_shoot_hands_back, image_taunt_index, _x, _y, 1, _flip, dir, c_white, 1);
		draw_sprite_ext(spr_pl_shoot, image_taunt_index, x, y, image_direction, 1, 0, c_white, 1);
		draw_sprite_ext(spr_pl_shoot_hands_front, image_taunt_index, _x, _y, 1, _flip, dir, c_white, 1);
	} else if (have_tube) {
		draw_sprite_ext(spr_pl_tube, image_taunt_index, x, y, image_direction, 1, 0, c_white, 1);
	} else {
		draw_sprite_ext(spr_pl_punch, image_taunt_index, x, y, image_direction, 1, 0, c_white, 1);
	}
} else if (image_smoke_index > 0) {
	draw_sprite_ext(spr_pl_smoke, image_smoke_index, x, y, image_direction, 1, 0, c_white, 1);
	draw_sprite_light_ext(spr_pl_smoke_light, image_smoke_index, x, y, image_direction, 1, 0, c_white, 1);
	draw_sprite_bloom_ext(spr_pl_smoke_light, image_smoke_index, x, y, image_direction, 1, 0, c_white, 1);
} else {
	draw_sprite_ext(spr_pl_idle, image_idle_index, x, y, image_direction, 1, 0, c_white, 1);
}

if (interact_object && !scr_hit_menu()) {
	interact_object.selected = 1;
	interact_object.alarm[11] = 2;
}

