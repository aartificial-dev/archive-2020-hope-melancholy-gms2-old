/// @description Use
// You can write your code in this editor

var hp_r = obj_pl.hp/obj_pl.mhp;
var sa_r = obj_pl.sanity/obj_pl.msanity;

if (hp_r > 0.7) {
	if (sa_r > 0.7) {
		scr_message("Yup, it's ol' good me");
		obj_pl.sanity++;
	} else if (sa_r > 0.3) {
		scr_message("I feel something behind me");
	} else {
		scr_message("W-what am I? WHAT HAVE I BECAME?");
		obj_pl.sanity--;
	}
} else if (hp_r > 0.3) {
	if (sa_r > 0.7) {
		scr_message("Just a little bruise");
		obj_pl.sanity++;
	} else if (sa_r > 0.3) {
		scr_message("I feel not good");
	} else {
		scr_message("I'm.. HA HA... I'm paying for my ssssssins");
		obj_pl.sanity--;
	}
} else {
	if (sa_r > 0.7) {
		scr_message("Need to find something to heal myself");
		obj_pl.sanity++;
	} else if (sa_r > 0.3) {
		scr_message("I'm bleeding out");
	} else {
		scr_message("I'm dead. I'm dead. I'm dead. I'm dead. I'm dead. I'M DEAD");
		obj_pl.sanity--;
	}
}