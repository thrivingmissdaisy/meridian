/// @description create a grid of nodes for A* pathfinding
/// @param width
/// @param height
var width = argument0;
var height = argument1;


//get the tile_map_id for marking nodes walkable or not
var tile_layer = layer_get_id("Test");
tilemap = layer_tilemap_get_id(tile_layer);

//grid = ds_grid_create(width, height);//create ds grid to store and later access nodes

for(var xx=0; xx<width; xx++){
	for(var yy=0; yy<height; yy++){
		var tiledata = tilemap_get_at_pixel(tilemap, x+xx*TILE_SIZE, y+yy*TILE_SIZE);
		grid[xx, yy] = create_node(x+xx*TILE_SIZE, y+yy*TILE_SIZE, tile_get_empty(tiledata), xx, yy);
	}
}