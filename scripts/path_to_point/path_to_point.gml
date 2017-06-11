/// @description get a path between two provided vector2s
/// @param start_pos;
/// @param end_pos;

start_pos = vec2(((argument0[X] div TILE_SIZE)*TILE_SIZE+TILE_SIZE/2)-grid_object.x, ((argument0[Y] div TILE_SIZE)*TILE_SIZE+TILE_SIZE/2)-grid_object.y);
end_pos = vec2(((argument1[X] div TILE_SIZE)*TILE_SIZE+TILE_SIZE/2)-grid_object.x, ((argument1[Y] div TILE_SIZE)*TILE_SIZE+TILE_SIZE/2)-grid_object.y);

if(mp_grid_path(grid_object.grid, path, start_pos[X], start_pos[Y], end_pos[X], end_pos[Y], true)){
	path_start(path, 2, path_action_stop, false);
}