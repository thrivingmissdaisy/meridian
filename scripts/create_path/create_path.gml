/// @description create a path by tracing back through node parents
/// @param start_node
/// @param end_node
/*
if(ds_exists(path, ds_type_list)){
	ds_list_destroy(path);
}
*/
var path = ds_list_create();

var current_node = argument0;

while(current_node != argument1){//if you are not at the end keep tracing
	if(current_node[? "parent"] != noone){
		var parent = current_node[? "parent"];
		var child = current_node[? "child"];
		if(current_node[? "grid_x"] == child[? "grid_x"] && current_node[? "grid_x"] == parent[? "grid_x"] || current_node[? "grid_y"] == child[? "grid_y"] && current_node[? "grid_y"] == parent[? "grid_y"]){
			current_node = child;
			continue;
		}
		ds_list_add(path, current_node);//only add node to path if it is not in line with its parent and child
		current_node = child;
	}
	ds_list_add(path, current_node);//if you are at the first node there is no parent so add it to the path and move to child
	current_node = current_node[? "child"];
}

return path;