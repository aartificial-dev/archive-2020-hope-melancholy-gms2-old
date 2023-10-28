// y = 162
// 0: hand item 2 
// 1 - 5: items 48 + 34*i 
// 6 - 7 combine items 230  286 

//draw_sprite(spr_inv, 0, 0, 168 - inv_height);
//var _y = 168 - inv_height + 20;
// 180 - 168 = 12
draw_sprite(spr_inv_chips, 1, 0, 0);
//var _y = 1;

draw_set_font_ext(font_pixel, fa_center, fa_top);
draw_text_color(140, 149 - inv_height + 2, hover_name, c_gray, c_gray, c_gray, c_gray, 1);

for (var i = 0; i < 5; i ++) {
	var item = chp[| i];
	if (ds_exists(item, ds_type_map)) {
		var sprite = item[? "sprite"];
		var _x = 137 + (35 * i);
		switch (sprite) {
			case spr_chip_inv: draw_sprite(spr_inv_chips, 2, _x, 1); break;
			case spr_chip_inv_r: draw_sprite(spr_inv_chips, 3, _x, 1); break;
			case spr_chip_inv_g: draw_sprite(spr_inv_chips, 4, _x, 1); break;
			case spr_chip_inv_b: draw_sprite(spr_inv_chips, 5, _x, 1); break;
		}
		
	}
}

