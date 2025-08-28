draw_set_alpha(0.75);
draw_circle_colour(display_get_width() / 2, 64, 34,c_black, gp_bt_inner, false);
draw_set_alpha(1);
draw_ring_bar(display_get_width() / 2, 64, 32, 8, base_time * 360, base_time * 360, 0, 360, 1, gp_bt_inner);
draw_ring_bar(display_get_width() / 2, 64, 32, 8, base_time * 360, curr_time * 360, 90, 360, 1, gp_red);
draw_set_font(fnt_hud_ammo);
draw_set_halign(fa_center);
if(curr_time > 0) {
    draw_text_outline(display_get_width() / 2, 52, c_black, gp_red, string(curr_time), 1);
} else {
    draw_text_outline(display_get_width() / 2, 52, c_black, gp_green, string(wave), 1);
}
draw_set_halign(-1);

