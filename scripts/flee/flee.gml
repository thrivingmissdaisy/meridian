/// @description return a vector to steer towards to flee
/// @param x
/// @param y
/// @param weight

var target = vec2(argument0, argument1);
var weight = argument2;

//var normalized_desired = vec_normalize(vec_subtract(target, position));
//var desired_velocity = vec_scale(normalized_desired, max_spd);

var desired_velocity = vec_scale(vec_normalize(vec_subtract(position, target)), max_velocity);

return vec_scale(vec_subtract(desired_velocity, velocity), weight);