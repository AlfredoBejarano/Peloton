/// Draws menu controls and option descriptions

// Draws the option description.
draw_text_colour(screenx, room_height - 128, text, c_white, c_white, c_white, c_white, 1);
draw_set_halign(-1); // Resets all the drawing settings.
draw_set_font(-1);

// Control instruction drawing
if(global.control) {
    a = 95;
    b = 96;
} else {
    a = 0;
    b = 1;    
}

draw_set_alpha(1);
draw_set_font(fnt_upgrades);
draw_set_color(c_white);
draw_sprite_ext(spr_gp_buttons, a, 32, room_height - 56, 0.5, 0.5 , 0, -1, 1);
draw_text(88, room_height-48, getString("menu_ok"));
draw_sprite_ext(spr_gp_buttons, b, 160, room_height - 56, 0.5, 0.5 , 0, -1, 1);
draw_text(220, room_height-48, getString("menu_back"));
draw_set_color(-1);
draw_set_font(-1);

// Transition drawing
draw_set_alpha(recalpha);
draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);
