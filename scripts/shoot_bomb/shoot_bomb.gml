//shoot bomb
if(fire_pressed){
	if(!instance_exists(o_bomb)){//drop the bomb
		instance_create_depth(x + dir_x, y + dir_y, depth, o_bomb);
	}else{//detonate the bomb
		with(o_bomb) detonate = true;
	}
}