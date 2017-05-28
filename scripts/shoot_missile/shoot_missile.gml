//shoot missile
if(fire){
	if(!instance_exists(o_missile_target)){
		instance_create_depth(x, y, depth, o_missile_target);
	}
}

if(fire_released){
	missile_lock = 0;//reset the lock ons
	if(!ds_list_empty(o_missile_target.targets)){//make sure you got some targets
		for(var i=0; i<ds_list_size(o_missile_target.targets); i++){//create missiles for all targets
			var missile = instance_create_depth(x, y, depth, o_missile);
			missile.target = o_missile_target.targets[| i];
		}
		with(o_missile_target) instance_destroy();
	}else{
		with(o_missile_target) instance_destroy();
	}
}