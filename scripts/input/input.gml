/// @description gamepad button input
/// @param gamepad_id

var gp = argument0;

fire = gamepad_button_check(gp, gp_shoulderrb);
fire_released = gamepad_button_check_released(gp, gp_shoulderrb);

swap_a = gamepad_button_check_pressed(gp, gp_face1);//A
swap_b = gamepad_button_check_pressed(gp, gp_face2);//B
swap_x = gamepad_button_check_pressed(gp, gp_face3);//X
swap_y = gamepad_button_check_pressed(gp, gp_face4);//Y
