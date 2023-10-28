/// @description Inventory draw
// You can write your code in this editor

var mouse_gx = mouse_x - cam_x();
var mouse_gy = mouse_y - cam_y();

if (interact_object && !scr_hit_menu()) {
	hover_name = interact_object.interactive_name;
}

if (inv_show = 0) {
	inv_height = max(inv_height - 1, 0);
} else {
	inv_height = min(18, inv_height + 1);
}
inv_draw();

if (chp_show) {
	chp_draw();
} else {
	draw_sprite(spr_inv_chips, 0, 0, 0);
}

if (ds_exists(inv_hand, ds_type_map)) {
	draw_sprite_ext(inv_hand[? "sprite"], 0, mouse_gx, mouse_gy, 1.1, 1.1, 0, c_white, 1);
}

if (have_gun && (keyboard_check(vk_shift) || is_attack)) {
	for (var i = 0; i < 6; i ++) {
		var is = (i < ammo);
		draw_sprite_ext(spr_bullets, is, x - 20 + (7 * i) - cam_x(), y + 24 + 2, 0.7, 0.7, 0, c_white, 1);
	}
}

draw_sprite(spr_bars, 0, 0, 0);

draw_healthbar(18, 2, 61, 6, (hp / mhp) * 100, c_black, $a1a1ed, $a1a1ed, 0, 0, 0);
draw_healthbar(18, 10, 61, 14, (sanity / msanity) * 100, c_black, $ddb8d8, $ddb8d8, 0, 0, 0);

if (sanity >= 30) {
	draw_sprite(spr_face_calm, 0, 0, 0);
} else if (sanity > 10 && sanity < 30) {
	draw_sprite(spr_face_nervous, image_face_index, 0, 0);
} else {
	draw_sprite(spr_face_insane, image_face_index, 0, 0);
}