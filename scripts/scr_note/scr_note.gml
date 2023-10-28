/// @arg [text,type]
var text = argument0[0];
var type = argument0[1];
var note = instance_create_layer(0, 0, "L_Hud", obj_note);
note.text = text;
note.type = type;