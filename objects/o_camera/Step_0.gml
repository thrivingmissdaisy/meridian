/// @description move toward target
x += (targetx-x)/25;
y += (targety-y)/25;

if(follow != noone){
	targetx = follow.x;
	targety = follow.y;
}

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, vm);