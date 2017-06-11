//shoot bomb
if(bomb_pressed){
	if(!instance_exists(o_bomb)){//drop the bomb
		instance_create_depth(x, y, depth, o_bomb);
	}else{//detonate the bomb
		with(o_bomb) detonate = true;
	}
}