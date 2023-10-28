/// @arg anim
/// @arg sprite
/// @arg speed

switch (argument0) {
	case anim.idle: 
		image_idle = argument1;
		image_idle_speed = argument2;
	break;
	case anim.custom: 
		image_custom = argument1;
		image_custom_speed = argument2;
	break;
	case anim.walk: 
		image_walk = argument1;
		image_walk_speed = argument2;
	break;
	case anim.taunt: 
		image_taunt = argument1;
		image_taunt_speed = argument2;
	break;
	case anim.hit: 
		image_hit = argument1;
		image_hit_speed = argument2;
	break;
	case anim.death: 
		image_death = argument1;
		image_death_speed = argument2;
	break;
}