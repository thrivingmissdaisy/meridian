/// @description 
input(0);

if(swap_a) switch_states("blaster");
if(swap_b) switch_states("bomb");
if(swap_x) switch_states("missile");
if(swap_y) switch_states("teleport");

switch(state){
	case "initialize":
		move_collide();
	break;
	case "blaster":
		aim(8);
		move_collide();
		shoot();
	break;
	case "missile":
		aim(4);
		move_collide();
		shoot_missile();
	break;
	case "bomb":
		aim(8);
		move_collide();
		shoot_bomb();
	break;
	case "teleport":
		aim(5);//*
		move_collide();
		//*teleport aim script 
	break;
	case "pause":
		//*pause menu script
	break;
	default: break;
}



