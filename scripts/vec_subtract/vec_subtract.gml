/// @description subtracts each component of vect1 with each component of vect2
/// @param vec_1
/// @param vec_2

var v1 = argument0;
var v2 = argument1;
var v;

for(var i=0; i<2; i++){
	v[i] = v1[i] - v2[i];
}
return v;