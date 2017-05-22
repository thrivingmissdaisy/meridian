/// @param device
/// @param h_axis
/// @param v_axis
/// @param deadzone

var device = argument0;
var h_axis = argument1;
var v_axis = argument2;
var deadzone = argument3;

haxis = gamepad_axis_value(device, h_axis);
vaxis = gamepad_axis_value(device, v_axis);
mag = point_distance(0, 0, haxis, vaxis);

if(mag >= deadzone) return true;