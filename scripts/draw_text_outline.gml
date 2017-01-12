///draw_text_outline(x, y, outline color, string color, string, alpha)  
/**
    This script was originally posted by Alien_Production user
    in the r/gamemaker subforum.
    
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
draw_text_transformed(xx+1, yy+1, argument[4], sx, sy, 0);  
draw_text_transformed(xx-1, yy-1, argument[4], sx, sy, 0);  
draw_text_transformed(xx,   yy+1, argument[4], sx, sy, 0);  
draw_text_transformed(xx+1, yy,   argument[4], sx, sy, 0);  
draw_text_transformed(xx,   yy-1, argument[4], sx, sy, 0);  
draw_text_transformed(xx-1, yy,   argument[4], sx, sy, 0);  
draw_text_transformed(xx-1, yy+1, argument[4], sx, sy, 0);  
draw_text_transformed(xx+1, yy-1, argument[4], sx, sy, 0);  

//Text  
draw_text_transformed(xx, yy, argument[4], sx, sy, 0);  
draw_set_alpha(1);
