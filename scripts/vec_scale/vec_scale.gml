/// @description scales each component of vector by the real specified
/// @param vector
/// @param scale_multiplier

var v1 = argument0;
var r = argument1;
var v;

for(var i=0; i<2; i++){
	v[i] = v1[i]*r;
}
return v;