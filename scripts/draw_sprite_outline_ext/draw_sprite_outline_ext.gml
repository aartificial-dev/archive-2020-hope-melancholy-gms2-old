/// @arg sprite
/// @arg subimg
/// @arg x
/// @arg y
/// @arg xscale
/// @arg yscale
/// @arg rot
/// @arg color
/// @arg alpha
/// @arg offset
var offset = argument9;
for (var _x = -offset; _x <= offset; _x ++) {  
     for (var _y = -offset; _y <= offset; _y ++) {  
          draw_sprite_ext(argument0, argument1, argument2 + _x, argument3 + _y, argument4, argument5, argument6, argument7, argument8);
     }
}
draw_sprite_ext(argument0, argument1, argument2, argument3, argument4, argument5, argument6, c_white, argument8);