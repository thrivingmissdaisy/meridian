/// @param tile_map_id
/// @param tile_size
/// @param velocity_array
var tile_map_id = argument0;
var tile_size = argument1;
var velocity = argument2;

//for velocity array
var vec2_x = 0;
var vec2_y = 1;

//move horizontally
x += velocity[vec2_x];

//horizontal collision
if(velocity[vec2_x] > 0){
	//right
	var tile_right = check_for_tile(tile_map_id, [bbox_right-1, bbox_top], [bbox_right-1, bbox_bottom-1]);
	if(tile_right){
		x = bbox_right & ~(tile_size-1);
		x -= bbox_right-x;
		velocity[@ vec2_x] = 0;
	}
}else{
	//left
	var tile_left = check_for_tile(tile_map_id, [bbox_left, bbox_top], [bbox_left, bbox_bottom-1]);
	if(tile_left){
		x = bbox_left & ~(tile_size-1);
		x += tile_size+x-bbox_left;
		velocity[@ vec2_x] = 0;
	}
}

//move vertically
y += velocity[vec2_y];

//vertical collision
if(velocity[vec2_y] > 0){
	//down
	var tile_bottom = check_for_tile(tile_map_id, [bbox_left, bbox_bottom-1], [bbox_right-1, bbox_left-1]);
	if(tile_bottom){
		y = bbox_bottom & ~(tile_size-1);
		y -= bbox_bottom-y;
		velocity[@ vec2_y] = 0;
	}
}else{
	//up
	var tile_top = check_for_tile(tile_map_id, [bbox_left, bbox_top], [bbox_right-1, bbox_top]);
	if(tile_top){
		y = bbox_top & ~(tile_size-1);
		y += tile_size+y-bbox_top;
		velocity[@ vec2_y] = 0;
	}
}