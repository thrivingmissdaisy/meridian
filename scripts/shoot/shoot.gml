//shoot
if(blaster_left||blaster_right){
	facing = blaster_right - blaster_left;//set facing direction
	
	if(can_fire){
		can_fire = false;
		var bullet = instance_create_depth(x, y, depth, o_bullet);
		bullet.facing = facing;
		alarm[0] = reload;
	}
}

