// draw_action_button(x, y, key/button, controller_type);

key = get_keyname(argument2);
size = string_length(key);
subimage = 0;

if(argument3) {
    subimage = 0;    // Draw keyboard key
} else {
    subimage = 1;   // Draw gamepad button
}
font_size = font_get_size(fnt_action_buttons)*2;
font_size_cuarter = font_size/4;
color = button_color_factory(argument2);

draw_set_font(fnt_action_buttons);
draw_sprite_stretched(spr_keybutton, subimage, argument0, argument1, (font_size_cuarter*3) + (font_size_cuarter*size), font_size);
draw_set_color(color);
if(size > 1) { 
    draw_text(argument0 + ((font_size_cuarter-2) + (font_size_cuarter/(size-1))), argument1 + (font_size_cuarter/2), key); 
} else {
    draw_text(argument0 + font_size_cuarter, argument1 + (font_size_cuarter/2), key); 
}
draw_set_color(c_white);
