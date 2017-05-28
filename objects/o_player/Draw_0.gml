/// @description draw player and weapon

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