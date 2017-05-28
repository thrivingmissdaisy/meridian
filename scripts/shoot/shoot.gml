//shoot
if(fire && can_fire){
	can_fire = false;
	var bullet = instance_create_depth(x + dir_x, y + dir_y, depth, o_bullet);
	bullet.direction = angle;
	bullet.speed = 10;
	bullet.image_angle = angle;
	alarm[0] = reload;
}