/// @description initialize the player
move_dead_zone = 0.3;//*maybe make these the same?
aim_dead_zone = 0.3;//*maybe make these the same?
aiming = false;
lean = 0;
lean_max = 25;
spd = 4;
dash_spd = 10;
angle = 0;//for drawing the weapons at the right angle and firing
can_fire = true;
reload = 10;
dashing = false;
dash_length = 10;
can_dash = true;
dash_cooldown = 90;
missile_lock = 0;
missile_lock_max = 10;
teleport_x = 0;
teleport_y = 0;

dir_x = 0;
dir_y = 0;

dx = 0;
dy = 0;

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