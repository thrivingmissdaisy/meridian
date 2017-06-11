/// @description set all instances to scroll state and scroll the camera
//check if player is outside of o_screen_bounds hitbox
if(x > scroll_bounds.bbox_right || x < scroll_bounds.bbox_left || y > scroll_bounds.bbox_bottom || y < scroll_bounds.bbox_top){
	//clean up the current screen(destroy enemies, pathfinding, etc
	if(instance_exists(o_pathfinding))instance_destroy(o_pathfinding);//destroy the pathfinding object if it exists
	with(o_enemy){//destroy all enemies to remove their paths and other data structures
		if(in_bounds(id, vec2(other.scroll_bounds.bbox_left, other.scroll_bounds.bbox_top), vec2(other.scroll_bounds.bbox_right, other.scroll_bounds.bbox_bottom))){
			instance_destroy();
		}
	}
	//deactivate everything outside the bounds
	instance_deactivate_region(
		scroll_bounds.bbox_left,
		scroll_bounds.bbox_top,
		scroll_bounds.sprite_width*scroll_bounds.image_xscale,
		scroll_bounds.sprite_height*scroll_bounds.image_yscale,
		false, true
	);
	//set the new screen bounds
	scroll_bounds = instance_place(x, y, o_screen_bounds);
	//activate everything inside the bounds and o_game
	instance_activate_region(
		scroll_bounds.bbox_left,
		scroll_bounds.bbox_top,
		scroll_bounds.sprite_width*scroll_bounds.image_xscale,
		scroll_bounds.sprite_height*scroll_bounds.image_yscale,
		true
	);
	instance_activate_object(o_game);
	with(o_respawn){//destroy all respawn objects to recreate enemies
		if(in_bounds(id, vec2(other.scroll_bounds.bbox_left, other.scroll_bounds.bbox_top), vec2(other.scroll_bounds.bbox_right, other.scroll_bounds.bbox_bottom))){
			instance_destroy();
		}
	}
	o_camera_target.screen_clamp = scroll_bounds;
	
}