/// @description initialize the player
position = vec2(x, y);
velocity = vec2(0, 0);

facing = 1;//1=right -1=left

lockon_radius = 200;
missile_lock = 0;
missile_lock_max = 10;

dead_zone = 0.3;

scroll_bounds = instance_place(x, y, o_screen_bounds);

lean = 0;
lean_max = 25;
spd = 4;
dash_spd = 10;
can_fire = true;
reload = 10;
dashing = false;
dash_length = 10;
can_dash = true;
dash_cooldown = 90;

teleport_location = x;
teleport_distance = 200;

state = "initialize";
blaster_obtained = false;
bomb_obtained = false;
missile_obtained = false;
teleport_obtained = false;
dash_obtained = true;//*make collectable

//get the tile_map_id for tile collision
var tile_layer = layer_get_id("Test");
tilemap = layer_tilemap_get_id(tile_layer);

//sprite info for origin offset
s_bbox_left = sprite_get_bbox_left(sprite_index)-sprite_get_xoffset(sprite_index);
s_bbox_right = sprite_get_bbox_right(sprite_index)-sprite_get_xoffset(sprite_index);
s_bbox_bottom = sprite_get_bbox_bottom(sprite_index)-sprite_get_yoffset(sprite_index);
s_bbox_top = sprite_get_bbox_top(sprite_index)-sprite_get_yoffset(sprite_index);

//create the camera target
instance_create_depth(x, y, depth, o_camera_target);

//deactivate everything outside the bounds
instance_deactivate_region(
	scroll_bounds.bbox_left,
	scroll_bounds.bbox_top,
	scroll_bounds.sprite_width*scroll_bounds.image_xscale,
	scroll_bounds.sprite_height*scroll_bounds.image_yscale,
	false, true
);
	
	
	
	
	
	
	