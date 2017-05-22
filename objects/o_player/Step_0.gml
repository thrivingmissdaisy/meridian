/// @description 
input();

var vec2_x = 0;
var vec2_y = 1;

//aim the character
if(get_axis(0, gp_axisrh, gp_axisrv, aim_dead_zone)){
	aiming = true;
	var dir = point_direction(0, 0, gamepad_axis_value(0, gp_axisrh), gamepad_axis_value(0, gp_axisrv));
	if(angle != dir){
		var dif = angle_difference(angle, dir);
		angle -= min(abs(dif), 8) * sign(dif);
	}
}else{
	aiming = false;
}

//move the character
if(get_axis(0, gp_axislh, gp_axislv, move_dead_zone)){
	var dir = point_direction(0, 0, gamepad_axis_value(0, gp_axislh), gamepad_axis_value(0, gp_axislv));
	velocity[vec2_x] = clamp(velocity[vec2_x]+haxis*spd, -max_velocity, max_velocity);
	velocity[vec2_y] = clamp(velocity[vec2_y]+vaxis*spd, -max_velocity, max_velocity);
	//x += haxis*spd;
	//y += vaxis*spd;
	if(angle != dir && !aiming){
		var dif = angle_difference(angle, dir);
		angle -= min(abs(dif), 8) * sign(dif);
	}
}else{
	velocity[vec2_x] = lerp(velocity[vec2_x], 0, 0.2);
	velocity[vec2_y] = lerp(velocity[vec2_y], 0, 0.2);
}

move_contact_tile(collision_tile_map_id, TILE_SIZE, velocity);

//firing