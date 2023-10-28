/// @description use event
// You can write your code in this editor

if (script_exists(item[? "use"]) && item[? "can_use"]) {
	item[? "use_amount"] --;
	script_execute(item[? "use"], item[? "script_arg"]);
	if (item[? "use_amount"] == 0) {
		ds_map_destroy(item);
		instance_destroy();
	}
}