/// @description move the camera target based on input

//aim target with player aim
if(get_axis(0, gp_axisrh, gp_axisrv, 0.3)){
	var dir = point_direction(0, 0, gamepad_axis_value(0, gp_axisrh), gamepad_axis_value(0, gp_axisrv));
	x = o_player.x + lengthdir_x(200, dir);
	y = o_player.y + lengthdir_y(200, dir);	
}else if(get_axis(0, gp_axislh, gp_axislv, 0.3)){//aim target with player move
	var dir = point_direction(0, 0, gamepad_axis_value(0, gp_axislh), gamepad_axis_value(0, gp_axislv));
	x = o_player.x + lengthdir_x(200, dir);
	y = o_player.y + lengthdir_y(200, dir);	
}else{
	x = o_player.x;
	y = o_player.y;
}