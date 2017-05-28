/// @param change_state
var change_state = argument0;

switch(change_state){
	case "blaster":
		if(!state == "blaster" && blaster_obtained){
			//*add sounds
			//*add fx
			state = "blaster";
		}
	break;
	case "bomb":
		if(!state == "bomb" && bomb_obtained){
			//*add sounds
			//*add fx
			state = "bomb";
		}
	break;
	case "missile":
		if(!state == "missile" && missile_obtained){
			//*add sounds
			//*add fx
			state = "missile";
		}
	break;
	case "teleport":
		if(!state == "teleport" && teleport_obtained){
			//*add sounds
			//*add fx
			state = "teleport";
		}
	break;
	default: break;
}