/// @arg soundid
/// @arg x
/// @arg y
/// @arg falloff=150
/// @arg factor=1
/// @arg loop
/// @arg priority

var soundid = argument0;
var _x = argument1;
var _y = argument2;
var falloff = argument3;
var factor = argument4;
var loop = argument5;
var priority = argument6;

audio_falloff_set_model(audio_falloff_exponent_distance);

return audio_play_sound_at(soundid, _x, _y, 0, falloff/2, falloff, factor, loop, priority);