/// draw_action_button(x, y, key/button);
// Rename arguments to more legible variables.

x1 = argument0;
y1 = argument1;
key = get_keyname(argument2);

draw_sprite(spr_gp_buttons, key, x1, y1);
