draw_set_halign(fa_center);
draw_set_font(fnt_menu);
draw_text(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 128, string_hash_to_newline(text));
draw_set_halign(-1);
draw_set_font(-1);


