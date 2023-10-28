/// @arg sprite
/// @arg floor_sprite
/// @arg name
/// @arg description
/// @arg use_script
/// @arg can_use
/// @arg use_amount
/// @arg script_arg
/// @arg inspect_script
var item = ds_map_create();
item[? "sprite"] = argument0;
item[? "drop"] = argument1;
item[? "name"] = argument2;
item[? "desc"] = argument3;
item[? "use"] = argument4;
item[? "can_use"] = argument5;
item[? "use_amount"] = argument6
item[? "script_arg"] = argument7;
item[? "inspect"] = argument8;

return item;