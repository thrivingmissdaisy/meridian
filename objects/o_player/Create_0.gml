/// @description initialize the player
move_dead_zone = 0.3;
aim_dead_zone = 0.3;
aiming = false;
spd = 5;

velocity = [0, 0];
max_velocity = 5;
acceleration = 1;
angle = 0;

//get the tile_map_id
var layer_id = layer_get_id("Test");
collision_tile_map_id = layer_tilemap_get_id(layer_id);