/// @description Init
// You can write your code in this editor
event_inherited();



image_smoke_index = 0;
image_face_index = 0;
standing_time = 0;
ammo = 6;

is_player = 1;

scr_entity_init(1, 0.05, 40, 0.05, 1);
sanity = 40;
msanity = sanity;
sanity_index = 0;


instance_create_layer(x, y, "L_System", obj_cam);

interact_object = noone;
hover_name = "";

hand_length = 50;

inv_show = 0;
inv = inv_init();
inv_hand = noone;
inv_comb_c = 0;
inv_height = 0;

chp_show = 0;
chp = chp_init();

have_gun = 0;
have_tube = 0;


random_set_seed(current_time);
randomize();