//get movement input for character
if(get_axis(0, gp_axislh, gp_axislv, dead_zone)){
	facing = (haxis > 0) - (haxis < 0);
	//*var dir = point_direction(0, 0, gamepad_axis_value(0, gp_axislh), gamepad_axis_value(0, gp_axislv));
	//dash if left shoulder trigger pressed
	if(dash_pressed && dash_obtained && can_dash){
		can_dash = false;
		dashing = true;
		alarm[1] = dash_cooldown;
		alarm[2] = dash_length;
	}
	if(dashing){
		velocity[X] = haxis*dash_spd;
		velocity[Y] = vaxis*dash_spd;
	}else{
		velocity[X] = haxis*spd;
		velocity[Y] = vaxis*spd;
	}
	lean -= velocity[X];
	lean = clamp(lean, -lean_max, lean_max);
}else{
	lean = lerp(lean, 0, 0.2);
	velocity[X] = 0;//*if you want deccelerate put it here
	velocity[Y] = 0;
}

y += velocity[Y];//move character in y direction

//vertical collision
if(velocity[Y] < 0){//up
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

x += velocity[X];//move character in x direction

//horizontal collision
if(velocity[X] < 0){//left
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

position = vec2(x, y);//update the position vector2 for the player