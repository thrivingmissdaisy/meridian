//get movement input for character
if(get_axis(0, gp_axislh, gp_axislv, move_dead_zone)){
	var dir = point_direction(0, 0, gamepad_axis_value(0, gp_axislh), gamepad_axis_value(0, gp_axislv));
	dx = haxis*spd;
	dy = vaxis*spd;
	
	lean -= dx;
	lean = clamp(lean, -lean_max, lean_max);
	/*for aiming with movement not dure it is good
	if(angle != dir && !aiming){
		var dif = angle_difference(angle, dir);
		angle -= min(abs(dif), 8) * sign(dif);
		dir_x = lengthdir_x(64, dir);
		dir_y = lengthdir_y(64, dir);
	}
	*/
}else{
	lean = lerp(lean, 0, 0.2);
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