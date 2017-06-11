/// @description debug
draw_self();

if(path_get_number(path_index) >= 2){
	//draw the path
	draw_set_color(c_red);
	for(var i=0; i<path_get_number(path_index)-1; i++){
		draw_circle(path_get_point_x(path_index, i)+(TILE_SIZE/2), path_get_point_y(path_index, i)+(TILE_SIZE/2), 5, false);
		draw_line(
			path_get_point_x(path_index, i)+(TILE_SIZE/2),
			path_get_point_y(path_index, i)+(TILE_SIZE/2),
			path_get_point_x(path_index, i+1)+(TILE_SIZE/2),
			path_get_point_y(path_index, i+1)+(TILE_SIZE/2)
		);
	}
	//draw start and end points
	draw_set_color(c_green);
	draw_circle(path_get_point_x(path_index, 0)+(TILE_SIZE/2), path_get_point_y(path_index, 0)+(TILE_SIZE/2), 10, false);
	draw_set_color(c_red);
	draw_circle(path_get_point_x(path_index, path_get_number(path_index)-1)+(TILE_SIZE/2), path_get_point_y(path_index, path_get_number(path_index)-1)+(TILE_SIZE/2), 10, false);
	draw_set_color(c_white);
}
