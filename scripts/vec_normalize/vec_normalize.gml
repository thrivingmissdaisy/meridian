/// @description normalizes a vector
/// @param vector

var v1 = argument0;
var v1_mag = sqrt(sqr(v1[0]) + sqr(v1[1]));
var v;

for(var i=0; i<2; i++){
	v[i] = v1[i]/v1_mag;
}

return v;