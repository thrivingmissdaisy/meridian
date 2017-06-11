/// @description initialize position and width/height of grid

var screen_bounds = instance_place(x, y, o_screen_bounds);

var screen_width = (screen_bounds.bbox_left + screen_bounds.bbox_right) - screen_bounds.x;
var screen_height = (screen_bounds.bbox_top + screen_bounds.bbox_bottom) - screen_bounds.y;

width = screen_width/TILE_SIZE;
height = screen_height/TILE_SIZE;

create_grid(width, height);