/// draw_action_button(x, y, key/button);

// Rename arguments to more legible variables.
x1 = argument0;
y1 = argument1;
key = argument2;
draw_set_font(fnt_kb);

if(is_string(key)) {
    // Variables for drawing the rectangle, like padding or so.
    length = string_length(key);
    
    // 46px width is for a 96px Height font (91 pts font size).
    size = 18;
    
    // Center the rectangle drawing
    x2 = x1 + (length * size)
    y2 = y1 + 96;
    
    // Draw key rectangle outline based off keyboard length
    if(length > 1) {
        draw_rectangle_colour(x1, y1, x2, y2, gp_bt_outline, gp_bt_outline, gp_bt_outline, gp_bt_outline, false);               
        draw_rectangle_colour(x1 + 3, y1 + 3, x2 - 3, y2 - 3, gp_bt_inner, gp_bt_inner, gp_bt_inner, gp_bt_inner, false); 
        draw_text_colour(x1+36, y1, key, gp_white, gp_white, gp_white, gp_white, 1);        
    } else {
        draw_rectangle_colour(x1, y1, x1 + 96, y2, gp_bt_outline, gp_bt_outline, gp_bt_outline, gp_bt_outline, false);               
        draw_rectangle_colour(x1 + 3, y1 + 3, x1 + 93, y2 - 3, gp_bt_inner, gp_bt_inner, gp_bt_inner, gp_bt_inner, false); 
        draw_text_colour(x1+18, y1, key, gp_white, gp_white, gp_white, gp_white, 1);            
    }
} else {
    draw_sprite(spr_gp_buttons, key, x1, y1);
}
