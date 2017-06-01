/// @description get grid node from provided x, y world position
/// @param position
var position = argument0;

var _node = grid[floor(position[0]/TILE_SIZE), floor(position[1]/TILE_SIZE)];//*may need to clamp if outside of grid somehow?

return _node;