/// @description return a vector to steer towards to seek and slow to stop uppon reaching target
/// @param x
/// @param y
/// @param influence

var target = vec2(argument0, argument1);
var influence = argument2;
var distance = point_distance(x, y, argument0, argument1);
var desired_velocity;

if(distance < approach_distance){//approach if inside approach radius
	desired_velocity = vec_scale(vec_normalize(vec_subtract(target, position)), max_velocity * (distance/approach_distance));
}else{
	desired_velocity = vec_scale(vec_normalize(vec_subtract(target, position)), max_velocity);
}
return vec_scale(vec_subtract(desired_velocity, velocity), influence);