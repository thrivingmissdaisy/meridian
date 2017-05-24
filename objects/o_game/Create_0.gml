/// @description initialize the game
#macro TILE_SIZE 64

//set game resolution based on this display
ideal_width = 0;
ideal_height = 768;

aspect_ratio = display_get_width()/display_get_height();

ideal_width = round(ideal_height*aspect_ratio);

//pixel perfect scaling
if(display_get_gui_width() mod ideal_width != 0){
	var d = round(display_get_width()/ideal_width);
	ideal_width = display_get_width()/d;
}
if(display_get_gui_height() mod ideal_height != 0){
	var d = round(display_get_height()/ideal_height);
	ideal_height = display_get_height()/d;
}

//check for odd resolution size in ideal width and height variable
if(ideal_width & 1) ideal_width++;
if(ideal_height & 1) ideal_height++;

surface_resize(application_surface, ideal_width, ideal_height);
display_set_gui_size(ideal_width, ideal_height);
window_set_size(ideal_width, ideal_height);

room_goto_next();