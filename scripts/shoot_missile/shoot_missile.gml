/// @description lockon to targets within range while holding Y, fire missiles at locked on targets when Y is released
if(missile_pressed) targets = ds_list_create();

if(missile_held){//lock onto targets within target radius
	if(instance_exists(o_enemy)){
		if(missile_lock <= missile_lock_max){
			with(o_enemy){
				if(point_distance(x, y, other.x, other.y) <= other.lockon_radius && ds_list_find_index(other.targets, id) == -1){
					other.missile_lock++;
					ds_list_add(other.targets, id);//mark each enemy within the radius and not already in the list
					//*set enemy targeted bool to true
				}else if(point_distance(x, y, other.x, other.y) > other.lockon_radius*2 && ds_list_find_index(other.targets, id) != -1){
					other.missile_lock--;
					ds_list_delete(other.targets, id);//if the enemy moves too far away while targeting remove it from list if it is being targeted
					//*set enemy targeted bool to false
				}
			}
		}
	}
}

if(missile_released){
	if(!ds_list_empty(targets)){//make sure you got some targets
		for(var i=0; i<ds_list_size(targets); i++){//create missiles for all targets
			var missile = instance_create_depth(x, y, depth, o_missile);
			missile.target = targets[| i];
		}
	}
	ds_list_destroy(targets);//destroy the list of targets whether it is empty or not
	missile_lock = 0;
}