/// @description find a path between provided start and end points
/// @param start_node
/// @param end_node
var start_node = get_node(argument0);
var end_node = get_node(argument1);

open = ds_priority_create();//open priority queue for finding lowest cost and evaluate
closed = ds_list_create();//closed list for checking if node has all neighbors checked

ds_priority_add(open, start_node, start_node[GCOST] + start_node[HCOST]);

while(!ds_priority_empty(open)){//while there are still nodes to be evaluated
	var current_node = ds_priority_delete_min(open);//remove the lowest f_cost
	//*maybe loop through to see if priority/f_cost is the same as any other node and check the h_cost
	ds_list_add(closed, current_node);//add lowest f_cost to closed
	
	if(current_node == end_node){
		ds_priority_destroy(open);//destroy the open priority list not needed anymore
		ds_list_destroy(closed);//destroy the closed list not needed anymore
		return create_path(start_node, end_node);
	}
	
	for(var xx=-1; xx<=1; xx++){//get all of the neigbors of the current node
		for(var yy=-1; yy<=1; yy++){
			if(!xx == 0 && !yy == 0){
				var check_x = current_node[GRID_X] + xx;
				var check_y = current_node[GRID_Y] + yy;
				if(check_x >= 0 && check_x < width && check_y >= 0 && check_y < height){
					var neighbor = grid[check_x, check_y];
					//if neighbor is not walkable or is in the closed list skip to the next neighbor
					if(neighbor[WALKABLE] == false || ds_list_find_index(closed, neighbor) != -1){
						continue;
					}
					
					var new_cost_to_neighbor = current_node[GCOST] + get_distance(current_node, neighbor);
					if(new_cost_to_neighbor < neighbor[GCOST] || ds_priority_find_priority(open, neighbor) = undefined){
						neighbor[GCOST] = new_cost_to_neighbor;
						neighbor[HCOST] = get_distance(neighbor, end_node);
						neighbor[PARENT] = current_node;
						current_node[CHILD] = neighbor;
						if(ds_priority_find_priority(open, neighbor) = undefined){//if not in the open list add
							ds_priority_add(open, neighbor, neighbor[GCOST] + neighbor[HCOST]);
						}
					}
				}
			}
		}
	}
}