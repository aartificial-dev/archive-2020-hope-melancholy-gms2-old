/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

scr_anim_init(anim.idle, spr_monster_idle, 1);
scr_anim_init(anim.taunt, spr_monster_attack, 3);
scr_anim_init(anim.walk, spr_monster_walk, 1);
scr_anim_init(anim.death, spr_monster_die, 2);

scr_entity_init(0.5, 0.05, 1, 0.05, 0);