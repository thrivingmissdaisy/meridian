/// @description initialize pathfinding enemy
event_inherited();

if(!instance_exists(o_pathfinding)){//create pathfinding grid if it does not exist
	screen_bounds = instance_place(x, y, o_screen_bounds);
	instance_create_depth(screen_bounds.x, screen_bounds.y, depth, o_pathfinding);
}

grid_object = o_pathfinding;
path = path_add();

alarm[0] = room_speed;//*alarm for updating the path can probably update even fewer times?