/// @description checks to see whether object id is within the bounds provided
/// @param object_id
/// @param vec2_bound_1
/// @param vec2_bound_2

var object = argument0;
var bounds_1 = argument1;
var bounds_2 = argument2;

return object.x > bounds_1[X] && object.x < bounds_2[X] && object.y > bounds_1[Y] && object.y < bounds_2[Y];//returns true if in bounds