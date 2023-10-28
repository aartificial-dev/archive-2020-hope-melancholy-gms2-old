/// @arg x
/// @arg y
/// @arg obj
/// @arg prec
/// @arg notme

var list = ds_list_create();
var num = collision_point_list(argument0, argument1, argument2, argument3, argument4, list, 0);
var dpt = 100000;
var obj = noone;

if (num > 0) {
	for (var i = 0; i < num; i ++) {
		if (list[| i].depth < dpt) {
			obj = list[| i];
			dpt = obj.depth;
		}
	}
}

ds_list_destroy(list);
return obj;