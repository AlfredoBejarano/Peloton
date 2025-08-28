draw_set_font(fnt_menu);
draw_set_alpha(image_alpha);
draw_set_color(c_white);
if(global.control) {
    draw_text(__view_get( e__VW.XView, 0 ) + 32, __view_get( e__VW.YView, 0 ) + 8, string_hash_to_newline("Mouse / keyboard"));
} else {
    draw_text(__view_get( e__VW.XView, 0 ) + 32, __view_get( e__VW.YView, 0 ) + 8, string_hash_to_newline("Gamepad"));
}
draw_set_color(-1);
draw_set_font(-1);
draw_set_alpha(1);

