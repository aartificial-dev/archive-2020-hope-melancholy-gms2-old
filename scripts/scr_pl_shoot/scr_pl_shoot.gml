if (ammo <= 0) {
	image_taunt_index = 0;
	is_attack = 0;
	audio_play_sound(snd_pistol_ofa, 0, 0);
	if (alarm[11] == -1) {
		scr_message("Out of ammo");
		alarm[11] = 15;
	}
	exit;
}

var _x = x + ((- 4) * image_direction);
var _y = y - 8;
var dir = point_direction(_x, _y, mouse_x, mouse_y);
var _flip; if (dir > 90 && dir < 270) {_flip = 3;} else {_flip = -3;}
var len_x = _x + lendir_x(22, _flip, dir);
var len_y = _y + lendir_y(22, _flip, dir);

var sleeve = instance_create_layer(len_x, len_y, "L_Back_Objects", obj_sleeve);
sleeve.dir = -image_direction;

var bullet = instance_create_layer(len_x, len_y, "L_Back_Objects", obj_bullet);
bullet.dir = dir;

var sound = choose(snd_pistol_shot_1, snd_pistol_shot_2, snd_pistol_shot_3);
audio_play_sound(sound, 0, 0);

if (image_direction == 1) {
	scr_cam_shake(2, cam_shake.left, 3);
} else {
	scr_cam_shake(2, cam_shake.right, 3);
}
ammo --;
sanity -= 2;