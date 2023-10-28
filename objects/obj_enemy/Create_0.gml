/// @description Insert description here
// You can write your code in this editor
event_inherited();

scr_anim_init(anim.idle, spr_solder_idle, 1);
scr_anim_init(anim.hit, spr_solder_hit_f, 2);
scr_anim_init(anim.death, spr_solder_die, 1);

scr_entity_init(1, 0.05, 15, 0.05, 1);