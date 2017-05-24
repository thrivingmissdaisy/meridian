/// @description initialize the camera
camera = camera_create();
var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var pm = matrix_build_projection_ortho(o_game.ideal_width, o_game.ideal_height, 1, 10000);

camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);

view_camera[0] = camera;

if(instance_exists(o_camera_target)){
	follow = o_camera_target;
}else{
	follow = noone;
}

targetx = x;
targety = y;