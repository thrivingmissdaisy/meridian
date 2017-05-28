/// @description detect collision with targetable objects
if(o_player.missile_lock < o_player.missile_lock_max){
	var target = instance_place(x, y, o_enemy){
		if(target != noone){
			if(ds_list_find_index(targets, target) == -1){
				ds_list_add(targets, target);
				target.targeted = true;
				o_player.missile_lock++;
			}
		}
	}
}

if(get_axis(0, gp_axisrh, gp_axisrv, 0.3)){
	var dir = point_direction(0, 0, gamepad_axis_value(0, gp_axisrh), gamepad_axis_value(0, gp_axisrv));
	x = o_player.x + lengthdir_x(200, dir);
	y = o_player.y + lengthdir_y(200, dir);	
}