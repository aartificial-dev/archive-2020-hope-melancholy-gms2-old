/// @arg message
var mbox = instance_create_layer(0, 0, "L_Hud", obj_message);
mbox.text = argument0;

with (obj_message) {
	if (self.id != mbox) {
		alarm[1] = 1;
	}
}