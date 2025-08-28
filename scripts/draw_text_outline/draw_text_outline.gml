/// @description draw_text_outline(x, y, outline color, string color, string, alpha)  
/// @param x
/// @param  y
/// @param  outline color
/// @param  string color
/// @param  string
/// @param  alpha
function draw_text_outline() {
	/**
	    This script was originally posted by Alien_Production user
	    in the r/gamemaker subredit.
    
	    It has been modified for adding alpha value for the text.
	**/

	var xx,yy;  
	xx = argument[0];  
	yy = argument[1];  
	sx = window_get_width()  / 1920;
	sy = window_get_height() / 1080;

	draw_set_alpha(argument[5]);

	//Outline  
	draw_set_color(argument[2]);  
	draw_text_transformed(xx+1, yy+1, string_hash_to_newline(argument[4]), sx, sy, 0);  
	draw_text_transformed(xx-1, yy-1, string_hash_to_newline(argument[4]), sx, sy, 0);  
	draw_text_transformed(xx,   yy+1, string_hash_to_newline(argument[4]), sx, sy, 0);  
	draw_text_transformed(xx+1, yy,   string_hash_to_newline(argument[4]), sx, sy, 0);  
	draw_text_transformed(xx,   yy-1, string_hash_to_newline(argument[4]), sx, sy, 0);  
	draw_text_transformed(xx-1, yy,   string_hash_to_newline(argument[4]), sx, sy, 0);  
	draw_text_transformed(xx-1, yy+1, string_hash_to_newline(argument[4]), sx, sy, 0);  
	draw_text_transformed(xx+1, yy-1, string_hash_to_newline(argument[4]), sx, sy, 0);  

	//Text  
	draw_set_color(argument[3]);  
	draw_text_transformed(xx, yy, string_hash_to_newline(argument[4]), sx, sy, 0);  
	draw_set_color(-1);
	draw_set_alpha(1);



}
