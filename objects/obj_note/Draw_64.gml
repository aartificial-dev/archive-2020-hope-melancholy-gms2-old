/// @description Insert description here
// You can write your code in this editor

/// 103 18 // 9 sep 117 w
/// 221 3 /// 229 11

draw_set_font_ext(font_pixel, fa_left, fa_top);

switch (type) {
	case note_type.book:
		sprite_index = spr_note_book;
	break;
	case note_type.news:
		sprite_index = spr_note_newspaper;
	break;
	default:
		sprite_index = spr_note;
}
var _fmod = 2;

draw_sprite(sprite_index, 0, x, y);
if (point_in_rectangle(mouse_x - cam_x(), mouse_y, 221, 3, 229, 11)) {
	if (mouse_check_button_pressed(mb_left)) {
		instance_destroy();
	}
	draw_sprite(sprite_index, 1, x, y);
}

if (array_length_1d(pages) - 1 > page_current) {
	draw_sprite(sprite_index, 2, x, y);
	if (point_in_rectangle(mouse_x - cam_x(), mouse_y, 221, 129, 229, 137)) {
		if (mouse_check_button_pressed(mb_left)) {
			page_current ++;
		}
		draw_sprite(sprite_index, 3, x, y);
	}
}
if (page_current > 0) {
	draw_sprite(sprite_index, 4, x, y);
	if (point_in_rectangle(mouse_x - cam_x(), mouse_y, 91, 129, 99, 137)) {
		if (mouse_check_button_pressed(mb_left)) {
			page_current --;
		}
		draw_sprite(sprite_index, 5, x, y);
	}
}
//draw_set_font_ext(font_pixel, fa_left, fa_top);
draw_text_ext_color(103, 18 + _fmod, pages[page_current], 9, 117, c_black, c_black, c_black, c_black, 1);
//draw_text(10, 10, string_height_ext(pages[page_current], 9, 117));
///120 max height
//show_debug_message(string_height_ext(pages[page_current], 9, 177));