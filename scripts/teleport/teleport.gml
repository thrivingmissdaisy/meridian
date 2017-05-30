//teleport
if(fire){
	teleport_x = x + dir_x;
	teleport_y = y + dir_y;
}

if(fire_released){
	x = teleport_x;
	y = teleport_y;
}