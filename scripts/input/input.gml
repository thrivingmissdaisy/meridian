/// @description gamepad button input
/// @param gamepad_id

var gp = argument0;

blaster_left = gamepad_button_check(gp, gp_face3);//X blaster left
blaster_right = gamepad_button_check(gp, gp_face2);//B blaster right

missile_pressed = gamepad_button_check_pressed(gp, gp_face4);//Y pressed create ds_list for targets only once
missile_held = gamepad_button_check(gp, gp_face4);//Y held/missile lock on
missile_released = gamepad_button_check_released(gp, gp_face4);//Y released/missile fire
bomb_pressed = gamepad_button_check_pressed(gp, gp_face1);//A pressed drop a bomb or detonate a bomb if it has been dropped

dash_pressed = gamepad_button_check_pressed(gp, gp_shoulderrb);//right shoulder trigger dash
teleport_held = gamepad_button_check(gp, gp_shoulderlb);//left shoulder trigger teleport target
teleport_released = gamepad_button_check_released(gp, gp_shoulderlb);//left shoulder trigger released teleport

swap_a = gamepad_button_check_pressed(gp, gp_face1);//A
swap_b = gamepad_button_check_pressed(gp, gp_face2);//B
swap_x = gamepad_button_check_pressed(gp, gp_face3);//X
swap_y = gamepad_button_check_pressed(gp, gp_face4);//Y
