/// @description update the path and move
if(instance_exists(o_player)){
	path_to_point(position, target.position);
}
alarm[0] = room_speed;