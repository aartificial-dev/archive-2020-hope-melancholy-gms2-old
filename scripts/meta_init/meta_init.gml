gml_pragma("global", "meta_init()");

enum cam_shake {
	left,
	right,
	both
}

enum note_type {
	book,
	note,
	news
}

enum anim {
	idle,
	custom,
	walk,
	taunt,
	hit,
	death
}

global.r_trans_spd = 120;
global.r_trans_state = 0;
global.r_trans_room = room_parent;