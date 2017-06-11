/// @description get grid node from provided x, y world position
/// @param position
var position = argument0;

var _node = instance_place(position[0], position[1], o_node);

if(_node != noone){
	return _node;
}