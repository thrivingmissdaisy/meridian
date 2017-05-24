/// @description move toward target
x += (targetx-x)/45;
y += (targety-y)/45;

if(follow != noone){
	targetx = follow.x;
	targety = follow.y;
}

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, vm);