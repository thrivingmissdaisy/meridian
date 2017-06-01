/// @description initialize the enemy
event_inherited();
target = o_player;;

position = vec2(x, y);
velocity = vec2(0, 0);
steering = vec2(0, 0);

approach_distance = 64;
//settle_distance = 10;//*figure out settling after fleeing, maybe just set target or wander

max_velocity = 5;
max_force = 0.3;