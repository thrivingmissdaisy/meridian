/// @description when right shoulder is held show the teleport location
if(teleport_held){
	if(get_axis(0, gp_axislh, gp_axislv, dead_zone)){
		facing = (haxis > 0) - (haxis < 0);
		var teleport_velocity = haxis*dash_spd;
	}else{
		teleport_velocity = 0;
	}
	teleport_location += teleport_velocity;
	if(facing < 0){
		teleport_location = clamp(teleport_location, x - teleport_distance, x - sprite_width);
	}else{
		teleport_location = clamp(teleport_location, x + sprite_width, x + teleport_distance);
	}
}

if(teleport_released){
	var tele_check1 = tilemap_get_at_pixel(tilemap, teleport_location - sprite_get_xoffset(sprite_index), y - sprite_get_yoffset(sprite_index)) & tile_index_mask;
	var tele_check2 = tilemap_get_at_pixel(tilemap, teleport_location + sprite_get_xoffset(sprite_index), y - sprite_get_yoffset(sprite_index)) & tile_index_mask;
	var tele_check3 = tilemap_get_at_pixel(tilemap, teleport_location - sprite_get_xoffset(sprite_index), y + sprite_get_yoffset(sprite_index)) & tile_index_mask;
	var tele_check4 = tilemap_get_at_pixel(tilemap, teleport_location + sprite_get_xoffset(sprite_index), y + sprite_get_yoffset(sprite_index)) & tile_index_mask;

	if(tele_check1 == 0 && tele_check2 == 0 && tele_check3 == 0 && tele_check4 == 0){//teleport here to the target
		x = teleport_location;
	}
}