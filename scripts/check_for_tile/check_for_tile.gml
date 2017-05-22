/// @description check for collision with a tile at points
/// @param tile_map_id
/// @param point_arrays...

var tile_map_id = argument[0];

//found variable
var found = false;

//for point arrays
var vec2_x = 0;
var vec2_y = 1;

//loop through the points and check for tile
for(var i=1; i<argument_count; i++){
	var point = argument[i];
	found = found || tilemap_get_at_pixel(tile_map_id, point[vec2_x], point[vec2_y]);
}

return found