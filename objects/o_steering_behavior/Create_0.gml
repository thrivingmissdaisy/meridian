/// @description initialize the enemy
event_inherited();
target = o_player;;

position = vec2(x, y);
velocity = vec2(0, 0);
steering = vec2(0, 0);

max_velocity = 5;
max_force = 0.3;