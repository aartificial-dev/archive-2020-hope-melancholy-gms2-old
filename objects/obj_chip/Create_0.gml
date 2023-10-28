/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
var _spr = choose(spr_chip_inv, spr_chip_inv_r, spr_chip_inv_g, spr_chip_inv_b);
item = inv_item_create(_spr, spr_chip_floor, "Chip", "Power Chip", noone, 0, 0, 0, scr_inspect_std);