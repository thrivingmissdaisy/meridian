/// @description draw self and targeted sprite if targeted
draw_self();

if(targeted){
	draw_sprite(s_targeted, 0, x, y);
}