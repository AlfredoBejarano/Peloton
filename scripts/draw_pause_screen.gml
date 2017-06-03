if(pause_bg != -1) {
    draw_background_ext(pause_bg, view_xview[0], view_yview[0], 1, 1, 0, pause_color, 1);
    draw_set_font(fnt_upgrades);
    draw_text_colour(room_width / 2, room_height/ 2, "PAUSE", c_white, c_white, c_white, c_white, 1);
}
