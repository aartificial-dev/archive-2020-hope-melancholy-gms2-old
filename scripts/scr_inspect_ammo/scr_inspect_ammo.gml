/// @arg item
var item = argument0;
var spell = "bullet"; if (item[? "script_arg"] > 1) spell = "bullets";
scr_message(string(item[? "desc"]) + " with " + string(item[? "script_arg"]) + " " + string(spell) + " in");

