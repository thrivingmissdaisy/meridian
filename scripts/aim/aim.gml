/// @param speed
aim_spd = argument0;

//aim the weapon drive
if(get_axis(0, gp_axisrh, gp_axisrv, aim_dead_zone)){
	//aiming = true;
	var dir = point_direction(0, 0, gamepad_axis_value(0, gp_axisrh), gamepad_axis_value(0, gp_axisrv));
	if(angle != dir){
		var dif = angle_difference(angle, dir);
		angle -= min(abs(dif), aim_spd) * sign(dif);
		dir_x = lengthdir_x(64, angle);
		dir_y = lengthdir_y(64, angle);
	}
}/*else{
	aiming = false;
}