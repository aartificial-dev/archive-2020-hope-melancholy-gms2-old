/// @description Use
// You can write your code in this editor

instance_create_layer(obj_pl.x, obj_pl.y, "L_System", obj_pl_marker);
scr_room_trans(interactive_room, global.r_trans_spd);
audio_play_at(snd_door_open, x, y, 150, 1, 0, 0);