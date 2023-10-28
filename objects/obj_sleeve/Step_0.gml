/// @description Insert description here
// You can write your code in this editor

vel += 0.7;

if (y < 127) {
	y += vel;
	x += spd * dir;
} else {
	y = 127;
}
