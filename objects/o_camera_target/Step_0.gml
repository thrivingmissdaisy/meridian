/// @description move the camera target based on input

if(get_axis(0, gp_axislh, gp_axislv, 0.3)){//aim target with player move
	var dir = point_direction(0, 0, gamepad_axis_value(0, gp_axislh), gamepad_axis_value(0, gp_axislv));
	x = o_player.x + lengthdir_x(200, dir);
	y = o_player.y + lengthdir_y(200, dir);	
}else{
	x = o_player.x;
	y = o_player.y;
}

if(screen_clamp != noone){//check to make sure the screen clamp object exists
	x = clamp(x, screen_clamp.bbox_left + o_game.ideal_width/2, screen_clamp.bbox_right - o_game.ideal_width/2);
	y = clamp(y, screen_clamp.bbox_top + o_game.ideal_height/2, screen_clamp.bbox_bottom - o_game.ideal_height/2);
}