str = "+"+string(quantity)+" "+name;
draw_set_alpha(image_alpha);
draw_set_font(fnt_upgrades);
draw_text_colour((display_get_gui_width() / 2) - ((string_length(str) / 2) * 20), (((display_get_gui_height() / 3)*2) + yy) + 50, string_hash_to_newline(str), c_white, c_white, c_white, c_white, image_alpha);
draw_set_font(fnt_health);
draw_sprite(spr_droppables, subimage, display_get_gui_width() / 2, ((display_get_gui_height() / 3)*2) + yy);
draw_set_alpha(1);

