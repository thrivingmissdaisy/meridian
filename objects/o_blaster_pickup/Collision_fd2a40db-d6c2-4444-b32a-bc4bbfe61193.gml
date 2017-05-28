/// @description set players blaster_obtained to true
switch(sprite_index){
	case s_blaster_pickup:
		o_player.blaster_obtained = true;
		o_player.state = "blaster";
		//*add sound and fx
	break;
	case s_missile_pickup:
		o_player.missile_obtained = true;
		o_player.state = "missile";
		//*add sound and fx
	break;
	case s_bomb_pickup:
		o_player.bomb_obtained = true;
		o_player.state = "bomb";
		//*add sound and fx
	break;
	case s_teleport_pickup:
		o_player.teleport_obtained = true;
		o_player.state = "teleport";
		//*add sound and fx
	break;
	default: break;
}

instance_destroy();