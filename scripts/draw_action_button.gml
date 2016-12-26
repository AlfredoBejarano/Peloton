/// draw_action_button(x, y, key/button);

// Rename arguments to more legible variables.
x1 = argument0;
y1 = argument1;
key = get_keyname(argument2);

if(is_string(key)) {
    // Variables for drawing the rectangle, like padding or so.
    length = string_length(key);
    // Draw Action Key
    draw_sprite(spr_kb_key, 0, x1, y1);
    if(length > 1 && length < 5) {
        draw_set_font(fnt_kb_small);
        draw_text_colour(x1+16, y1+30, key, gp_white, gp_white, gp_white, gp_white, 1);    
    } else if(length == 5){
        draw_set_font(fnt_kb_small);    
        draw_text_colour(x1+8, y1+30, key, gp_white, gp_white, gp_white, gp_white, 1);        
    }else {
        draw_set_font(fnt_kb);
        draw_text_colour(x1+25, y1+4, key, gp_white, gp_white, gp_white, gp_white, 1);    
    }
} else {
    draw_sprite(spr_gp_buttons, key, x1, y1);
}
