/// @description 
input(0);

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

//get movement input for character
if(get_axis(0, gp_axislh, gp_axislv, move_dead_zone)){
	var dir = point_direction(0, 0, gamepad_axis_value(0, gp_axislh), gamepad_axis_value(0, gp_axislv));
	dx = haxis*spd;
	dy = vaxis*spd;
	if(angle != dir && !aiming){
		var dif = angle_difference(angle, dir);
		angle -= min(abs(dif), 8) * sign(dif);
	}
}else{
	dx = 0;//*if you want deccelerate put it here
	dy = 0;
}

y += dy;//move character in y direction

//vertical collision
if(dy < 0){//up
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	if(t1 !=0 || t2 != 0){//collision
		y = ((bbox_top + TILE_SIZE)& ~(TILE_SIZE-1))-s_bbox_top;
	}
}else{//down
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	if(t1 !=0 || t2 != 0){//collision
		y = ((bbox_bottom & ~(TILE_SIZE-1))-1)-s_bbox_bottom;
	}
}

x += dx;//move character in x direction

//horizontal collision
if(dx < 0){//left
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	if(t1 !=0 || t2 != 0){//collision
		x = ((bbox_left + TILE_SIZE)& ~(TILE_SIZE-1))-s_bbox_left;
	}
}else{//right
	var t1 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	if(t1 !=0 || t2 != 0){//collision
		x = ((bbox_right & ~(TILE_SIZE-1))-1)-s_bbox_right;
	}
}

//shooting
if(fire && can_fire){
	can_fire = false;
	var bullet = instance_create_depth(x, y, depth, o_bullet);//*change to script for different weapons states not scripts
	bullet.direction = angle;
	bullet.speed = 10;
	bullet.image_angle = angle;
	alarm[0] = reload;
}