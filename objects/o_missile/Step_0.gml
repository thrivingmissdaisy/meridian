/// @description move towards target and explode on collision
if(target != noone){
	move_towards_point(target.x, target.y, spd);
}

image_angle = point_direction(x, y, target.x, target.y);

/*
if(x == target.x && y == target.y){//*change to collision code for hitting anything hittable and do damage
	target.targeted = false;
	instance_destroy();
}