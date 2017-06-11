/// @description calculates the distance between the provided nodes
/// @param node_a
/// @param node_b

var node_a = argument0;
var node_b = argument1;

var dist_x = abs(node_a[? "grid_x"] - node_b[? "grid_x"]);
var dist_y = abs(node_a[? "grid_y"] - node_b[? "grid_y"]);

if(dist_x > dist_y){
	return 14*dist_y + 10*(dist_x-dist_y);
}else{
	return 14*dist_x + 10*(dist_y-dist_x);
}