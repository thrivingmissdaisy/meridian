/// @description draw the node grid for debugging
draw_set_alpha(0.2);


for(var xx=0; xx<width; xx++){
	for(var yy=0; yy<height; yy++){
		var _node = grid[xx, yy];
		if(_node[WALKABLE] == true){
			draw_set_color(c_lime);
		}else{
			draw_set_color(c_red);
		}
		if(_node == get_node(o_steering_behavior.position))draw_set_color(c_blue);
		draw_rectangle(_node[X] + 2, _node[Y] + 2, _node[X]+TILE_SIZE - 2, _node[Y]+TILE_SIZE - 2, false);
	}
}
	
if(ds_exists(path, ds_type_list)){//draw the path
	for(var i=0; i<ds_list_size(path)-1; i++){
		draw_set_color(c_purple);
		var path_point = path[| i];
		draw_circle(path_point[X], path_point[Y], 10, false);
		draw_set_color(c_white);
	}
}

draw_set_color(c_white);
draw_set_alpha(1);