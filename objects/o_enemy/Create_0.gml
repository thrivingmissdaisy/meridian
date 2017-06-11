/// @description initialize the enemy
event_inherited();
target = o_player;;

position = vec2(x, y);
velocity = vec2(0, 0);

max_velocity = 5;
max_force = 0.3;

//create a respawn object when created to respawn this enemy
var respawn = instance_create_depth(x, y, depth, o_respawn);
respawn.respawn_object = object_index;
//*special note(enemies that spawn from another enemy should not create this object)!!!maybe they set respawn object to noone???