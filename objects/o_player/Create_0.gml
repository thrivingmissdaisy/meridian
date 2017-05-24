/// @description initialize the player
move_dead_zone = 0.3;//*maybe make these the same?
aim_dead_zone = 0.3;//*maybe make these the same?
aiming = false;
spd = 4;
angle = 0;//for drawing the ship at an angle so as not to change collision mask
can_fire = true;
reload = 10;

dx = 0;
dy = 0;

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