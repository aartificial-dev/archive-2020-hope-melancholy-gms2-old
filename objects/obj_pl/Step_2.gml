/// @description Menus
// You can write your code in this editor

interact_object = collision_point_depth(mouse_x, mouse_y, par_interactive, 0, 1);

if (interact_object && !ds_exists(inv_hand, ds_type_map)) {
	if (mouse_check_button_pressed(mb_right) && !scr_hit_menu()) {
		if (instance_exists(obj_menu)) {
			instance_destroy(obj_menu);
		}
		var obj = interact_object;
		var men = instance_create_layer(mouse_x - 15, mouse_y - 15, "L_Hud", obj_menu);
		men.obj = obj;
	}
}

have_gun = 0;
have_tube = 0;
var hand = inv[| 0];
if (ds_exists(hand, ds_type_map)) {
	if (hand[? "name"] == "Pistol") {
		have_gun = 1;
		scr_anim_init(anim.taunt, spr_pl_shoot, 8);
	}
	if (hand[? "name"] == "Tube") {
		have_tube = 1;
		scr_anim_init(anim.taunt, spr_pl_tube, 3);
	}
} else {
	scr_anim_init(anim.taunt, spr_pl_punch, 3);
}

event_inherited();