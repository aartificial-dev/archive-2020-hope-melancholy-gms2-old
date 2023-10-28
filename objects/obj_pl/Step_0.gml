/// @description Move & Anims
// You can write your code in this editor

move = keyboard_check(ord("D")) - keyboard_check(ord("A"));

//hp += mouse_wheel_up() - mouse_wheel_down();

if ((keyboard_check(vk_shift) || is_attack) && !ds_exists(inv_hand, ds_type_map)) {
	if (move != 0) {
		image_direction = move;
	}
	move = 0;
	standing_time = 0;
	image_idle_index = 0;
	image_smoke_index = 0;
	
	if (!is_attack)	{image_taunt_index = 0;}
	var camera = view_camera[0];
	var mouse_gx = mouse_x - camera_get_view_x(camera);
	var mouse_gy = mouse_y - camera_get_view_y(camera);
	var _mb = mouse_check_button_pressed(mb_left);
	var in_rect = point_in_rectangle(mouse_gx, mouse_gy, 0, 32, 320, 160 - 32);
	if (is_attack == 0 && _mb && !scr_hit_menu() && in_rect) {
		is_attack = 1;
		if (have_gun) { 
			scr_pl_shoot();
		}
	}
}

if (is_attack) {
	if (have_gun) {
		image_taunt_index += animation_speed * 8;
		//if (image_taunt_index >= 7) {
		//	is_attack = 0;
		//	image_taunt_index = 0;
		//}
	}
	if (!have_gun) {
		image_taunt_index += animation_speed * 3;
		//if (image_taunt_index >= 5) {
		//	is_attack = 0;
		//	image_taunt_index = 0;
		//}
	}
	if (have_tube) {
		if (ceil(image_taunt_index) == 3 && !instance_exists(obj_swoosh)) {
			var swoosh = instance_create_layer(x + (21 * image_direction), y - 5, "L_Entities", obj_swoosh);
			swoosh.creator = self.id;
		}
	}
	if (!have_gun && !have_tube) {
		if (ceil(image_taunt_index) == 3 && !instance_exists(obj_punch)) {
			var punch = instance_create_layer(x + (15 * image_direction), y - 5, "L_Entities", obj_punch);
			punch.creator = self.id;
		}
	}
}

event_inherited();

if (is_move) {
	image_walk_index += animation_speed * 2;
	if ((floor(image_walk_index) == 4 || floor(image_walk_index) == 0) && alarm[10] == -1 && spd = mspd) {
		var foot = choose(snd_foot_1, snd_foot_2 , snd_foot_3, snd_foot_4);
		audio_play_sound(foot, 0, 0);
		alarm[10] = 12;
	}
	if (image_walk_index > 7) {
		image_walk_index = 0;
	}
	image_direction = move;
	standing_time = 0;
	image_smoke_index = 0;
} else {
	image_walk_index = 0;
	standing_time ++;
	if (!image_smoke_index && !is_attack) {
		image_direction = sign(mouse_x - x);
	}
	if (image_direction == 0) {
		image_direction = 1;
	}
}

if (standing_time > 240 && floor(image_idle_index) == 0) {
	image_smoke_index += animation_speed;
	if (image_smoke_index >= 10) {
		image_smoke_index = 0;
		standing_time = 0;
	}
} else {
	image_idle_index += animation_speed + (sanity_index * 0.01);
}

image_face_index += 1/60;
if (image_face_index >= 4) {
	image_face_index = 0;
}

if (instance_exists(par_monster)) {
	if (distance_to_object(par_monster) < 30) {
		sanity -= 0.01;
	}
}

sanity = clamp(sanity, 0, msanity);
sanity_index = 1 - (sanity / msanity);
if (sanity < 30) {
	standing_time = 0;
	if (!audio_is_playing(snd_pl_breath)) {
		audio_play_sound(snd_pl_breath, 0, 1);
	}
	audio_sound_gain(snd_pl_breath, sanity_index, 0);
} else {
	if (audio_is_playing(snd_pl_breath)) {
		audio_stop_sound(snd_pl_breath);
	}
}

audio_listener_position(x, y, 0);
audio_listener_orientation(0, 0, 1000, 0, -1, 0);