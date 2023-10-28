/// @arg dir
/// @arg dir_for
/// @arg diff

var dir = argument0;
var dir_for = argument1;
var diff = argument2;


var dir_for1 = dir_for - diff;
var dir_for2 = dir_for + diff;

if (dir_for + diff > 360 && dir < 180){
	dir += 360;
}else
if (dir_for - diff < 0 && dir > 180){
	dir -= 360;
}

return real_in(dir, dir_for1, dir_for2);