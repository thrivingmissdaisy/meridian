/// @description create a grid of nodes for A* pathfinding
/// @param width
/// @param height
var width = argument0;
var height = argument1;

//get the tile_map_id for marking nodes walkable or not
var tile_layer = layer_get_id("Test");
tilemap = layer_tilemap_get_id(tile_layer);

for(var xx=0; xx<width; xx++){
	for(var yy=0; yy<height; yy++){
		var tiledata = tilemap_get_at_pixel(tilemap, x+xx*TILE_SIZE, y+yy*TILE_SIZE);
		grid[xx, yy] = instance_create_depth(x+xx*TILE_SIZE, y+yy*TILE_SIZE, depth, o_node);
		grid[xx, yy].walkable = tile_get_empty(tiledata);
		grid[xx, yy].grid_x = xx;
		grid[xx, yy].grid_y = yy;
		grid[xx, yy].parent = noone;
		grid[xx, yy].child = noone;
	}
}