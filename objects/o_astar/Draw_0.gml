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

draw_set_color(c_white);
draw_set_alpha(1);