// y = 162
// 0: hand item 2 
// 1 - 5: items 48 + 34*i 
// 6 - 7 combine items 230  286 

//draw_sprite(spr_inv, 0, 0, 168 - inv_height);
//var _y = 168 - inv_height + 20;
// 180 - 168 = 12
draw_sprite(spr_inv, 0, 0, 149 - inv_height);
var _y = 149 - inv_height + 20;

draw_set_font_ext(font_pixel, fa_center, fa_top);
draw_text_color(140, 149 - inv_height + 2, hover_name, c_gray, c_gray, c_gray, c_gray, 1);

var hand = inv[| 0];
if (ds_exists(hand, ds_type_map)) {
	var sprite = hand[? "sprite"];
	draw_sprite(sprite, 0, 2 + 16, _y);
}

for (var i = 3; i < 8; i ++) {
	var item = inv[| i];
	if (ds_exists(item, ds_type_map)) {
		var sprite = item[? "sprite"];
		var _x = 48 + (34 * (i - 3)) + 16;
		draw_sprite(sprite, 0, _x, _y);
	}
}

var itm1 = inv[| 1];
if (ds_exists(itm1, ds_type_map)) {
	var sprite = itm1[? "sprite"];
	draw_sprite(sprite, 0, 230 + 16, _y);
}

var itm2 = inv[| 2];
if (ds_exists(itm2, ds_type_map)) {
	var sprite = itm2[? "sprite"];
	draw_sprite(sprite, 0, 286 + 16, _y);
}
