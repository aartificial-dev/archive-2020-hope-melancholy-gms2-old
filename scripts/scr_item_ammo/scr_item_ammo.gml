if (obj_pl.ammo != 0) {
	var item = instance_create_layer(obj_pl.x, obj_pl.y, "L_Items", par_item);
	item.item = inv_item_create(spr_ammo_inv, spr_ammo_floor, "Pistol Mag", "Mag of 9mm bullets", scr_item_ammo, 1, 1, obj_pl.ammo, scr_inspect_ammo);
}

var ammo = argument0;
obj_pl.ammo = ammo;

var spell = "bullet";
if (ammo > 1 || ammo == 0) {
	spell = "bullets"
}
scr_message("Got " + string(ammo) + " " + string(spell));

var sound = choose(snd_pistol_cock_1, snd_pistol_cock_2, snd_pistol_cock_3);
audio_play_sound(sound, 0, 0);