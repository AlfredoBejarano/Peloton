draw_sprite_stretched_ext(sprite_index, 0, 0, total_height - current_height , display_get_width(), 64, gp_yellow, alpha);
draw_set_alpha(alpha / 3);
draw_rectangle_colour(0, 0, display_get_width(), display_get_height(), gp_yellow, gp_yellow, gp_yellow, gp_yellow, false);
draw_set_alpha(1);

