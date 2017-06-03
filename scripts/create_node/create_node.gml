/// @description create a node with x, y, and walkable_bool
/// @param x
/// @param y
/// @param walkable_bool
/// @param grid_x
/// @param grid_y

var node;

node[X] = argument0;//x pos of node in world
node[Y] = argument1;//y pos of node in world
node[WALKABLE] = argument2;//walkable_bool
node[GRID_X] = argument3;//x pos of node in grid
node[GRID_Y] = argument4;//y pos of node in grid
node[GCOST] = 0;
node[HCOST] = 0;
node[PARENT] = noone;
node[CHILD] = noone;

return node;