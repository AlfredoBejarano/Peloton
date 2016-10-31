/**
    This script was originally posted by Alien_Production user
    in the r/gamemaker subforum.
    
    It has been modified for adding alpha value for the text.
**/

//draw_text_outlined(x, y, outline color, string color, string)  
var xx,yy;  
xx = argument[0];  
yy = argument[1];  

draw_set_alpha(argument[5]);

//Outline  
draw_set_color(argument[2]);  
draw_text(xx+1, yy+1, argument[4]);  
draw_text(xx-1, yy-1, argument[4]);  
draw_text(xx,   yy+1, argument[4]);  
draw_text(xx+1,   yy, argument[4]);  
draw_text(xx,   yy-1, argument[4]);  
draw_text(xx-1,   yy, argument[4]);  
draw_text(xx-1, yy+1, argument[4]);  
draw_text(xx+1, yy-1, argument[4]);  

//Text  
draw_set_color(argument[3]);  
draw_text(xx, yy, argument[4]);  
draw_set_alpha(1);
