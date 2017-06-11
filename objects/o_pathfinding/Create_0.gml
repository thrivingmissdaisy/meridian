/// @description initialize position and width/height of grid

var screen_bounds = instance_place(x, y, o_screen_bounds);

var screen_width = (screen_bounds.bbox_left + screen_bounds.bbox_right) - screen_bounds.x;
var screen_height = (screen_bounds.bbox_top + screen_bounds.bbox_bottom) - screen_bounds.y;

width = screen_width div TILE_SIZE;
height = screen_height div TILE_SIZE;

grid = mp_grid_create(x, y, width, height, TILE_SIZE, TILE_SIZE);

var tile_layer = layer_get_id("Test");
tilemap = layer_tilemap_get_id(tile_layer);

for(var xx=0; xx<width; xx++){
	for(var yy=0; yy<height; yy++){
		var tiledata = tilemap_get_at_pixel(tilemap, x+xx*TILE_SIZE, y+yy*TILE_SIZE);
		if(!tile_get_empty(tiledata)){//if the tile is not empty add cell to grid
			mp_grid_add_cell(grid, xx, yy);
		}
	}
}