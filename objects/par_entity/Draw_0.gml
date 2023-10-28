/// @description Insert description here
// You can write your code in this editor

if (is_dying) {
	draw_sprite_ext(image_death, image_death_index, x, y, image_direction, 1, 0, c_white, 1);
} else if (is_hit) {
	draw_sprite_ext(image_hit, image_hit_index, x, y, image_direction, 1, 0, c_white, 1);
} else if (is_attack) {
	draw_sprite_ext(image_taunt, image_taunt_index, x, y, image_direction, 1, 0, c_white, 1);
} else if (is_move) {
	draw_sprite_ext(image_walk, image_walk_index, x, y, image_direction, 1, 0, c_white, 1);
} else if (is_custom) {
	draw_sprite_ext(image_custom, image_custom_index, x, y, image_direction, 1, 0, c_white, 1);
} else {
	draw_sprite_ext(image_idle, image_idle_index, x, y, image_direction, 1, 0, c_white, 1);
}