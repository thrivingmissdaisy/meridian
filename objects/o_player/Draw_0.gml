/// @description draw player and weapon
if(missile_held){
	draw_set_alpha(0.4);
	draw_set_color(c_orange);
	draw_circle(x, y, lockon_radius, false);
	draw_circle(x, y, lockon_radius, true);
	draw_set_alpha(1);
	draw_set_color(c_white);
}

if(teleport_held){
	//draw the player ghosted at the teleport location to let player know if they can teleport there or not
	var tele_check1 = tilemap_get_at_pixel(tilemap, teleport_location - sprite_get_xoffset(sprite_index), y - sprite_get_yoffset(sprite_index)) & tile_index_mask;
	var tele_check2 = tilemap_get_at_pixel(tilemap, teleport_location + sprite_get_xoffset(sprite_index), y - sprite_get_yoffset(sprite_index)) & tile_index_mask;
	var tele_check3 = tilemap_get_at_pixel(tilemap, teleport_location - sprite_get_xoffset(sprite_index), y + sprite_get_yoffset(sprite_index)) & tile_index_mask;
	var tele_check4 = tilemap_get_at_pixel(tilemap, teleport_location + sprite_get_xoffset(sprite_index), y + sprite_get_yoffset(sprite_index)) & tile_index_mask;

	if(tele_check1 != 0 || tele_check2 != 0 || tele_check3 != 0 || tele_check4 != 0){//can't teleport here draw target helper in red
		gpu_set_blendmode(bm_add);
		gpu_set_fog(true, c_red, 0, 0);
	    draw_sprite_ext(sprite_index, image_index, teleport_location, y, image_xscale, image_yscale, image_angle, image_blend, 0.50*image_alpha);
	    gpu_set_fog(true, c_yellow, 0, 0);
	    draw_sprite_ext(sprite_index, image_index, teleport_location, y, image_xscale, image_yscale, image_angle, image_blend, 0.25*image_alpha);
	    gpu_set_fog(false, c_white, 0, 0);
		gpu_set_blendmode(bm_normal);
	}else{
		draw_sprite_ext(sprite_index, image_index, teleport_location, y, image_xscale, image_yscale, image_angle, image_blend, 0.75*image_alpha);
	}
}

draw_sprite_ext(s_player, 0, x, y, image_xscale, image_yscale, lean, c_white, 1);

/*
switch(state){
	case "initialize":
		draw_sprite_ext(s_player, 0, x, y, image_xscale, image_yscale, lean, c_white, 1);
	break;
	case "blaster":
		draw_sprite_ext(s_player, 0, x, y, image_xscale, image_yscale, lean, c_white, 1);
		draw_sprite_ext(s_weapon, 0, x, y, 1, 1, angle, c_white, 1);//*create sprite for each weapon
	break;
	case "missile":
		draw_sprite_ext(s_player, 0, x, y, image_xscale, image_yscale, lean, c_white, 1);
		draw_sprite_ext(s_weapon, 0, x, y, 1, 1, angle, c_white, 1);
	break;
	case "bomb":
		draw_sprite_ext(s_player, 0, x, y, image_xscale, image_yscale, lean, c_white, 1);
		draw_sprite_ext(s_weapon, 0, x, y, 1, 1, angle, c_white, 1);
	break;
	case "teleport":
		draw_sprite_ext(s_player, 0, x, y, image_xscale, image_yscale, lean, c_white, 1);
		draw_sprite_ext(s_weapon, 0, x, y, 1, 1, angle, c_white, 1);
	break;
	case "pause":
		//*draw pause state?
	break;
	default: break;
}

draw_text(x - string_width(state)/2, y - 16, state);

/*for debug
draw_set_color(c_red);
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
draw_set_color(c_white);