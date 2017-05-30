/// @description clamps vector to max_length provided 
/// @param vector
/// @param max_length

var vector = argument0;
var max_length = argument1;

var vector_mag = sqrt(sqr(vector[0]) + sqr(vector[1]));

if(vector_mag > max_length){
    vector = vec_scale(vec_normalize(vector), max_length);
}

return vector;