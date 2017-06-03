/// @description create a path by tracing back through node parents
/// @param start_node
/// @param end_node

var path = ds_list_create();

var current_node = argument0;

while(current_node != argument1){//if you are not at the end keep tracing
	if(current_node[PARENT] != noone){
		var parent = current_node[PARENT];
		var child = current_node[CHILD];
		if(current_node[GRID_X] == child[GRID_X] && current_node[GRID_X] == parent[GRID_X] || current_node[GRID_Y] == child[GRID_Y] && current_node[GRID_Y] == parent[GRID_Y]){
			current_node = child;
			continue;
		}
		ds_list_add(path, current_node);//only add node to path if it is not in line with its parent and child
		current_node = child;
	}
	ds_list_add(path, current_node);//if you are at the first node there is no parent so add it to the path and move to child
	current_node = current_node[CHILD];
}

return path;