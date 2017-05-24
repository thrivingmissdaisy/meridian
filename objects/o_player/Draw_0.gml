/// @description draw the sprite rotated
draw_sprite_ext(s_player, 0, x, y, image_xscale, image_yscale, angle, c_white, 1);
draw_set_color(c_red);
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
draw_set_color(c_white);