/// @description 
input(0);

if(!teleport_held) move_collide();
teleport();
shoot();//*prefface with having the blaster component
shoot_missile();
drop_bomb();

scroll();