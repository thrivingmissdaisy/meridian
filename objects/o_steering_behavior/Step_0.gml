/// @description seek out the player
/*
//reset steering
steering = vec2(0, 0);

//calculate desired steering vector
steering = vec_add(steering, seek(target.x, target.y, 1));
steering = vec_truncate(steering, max_force);
velocity = vec_truncate(vec_add(velocity, steering), max_velocity);
position = vec_add(position, velocity);

x = position[0];
y = position[1];