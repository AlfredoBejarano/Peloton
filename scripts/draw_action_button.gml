/// draw_action_button(x, y, key/button);
// Rename arguments to more legible variables.

x1 = argument0;
y1 = argument1;
key = get_keyname(argument2);
spr = spr_gp_buttons;

if(global.touch) { spr = spr_dv_buttons; }
draw_sprite(spr, key, x1, y1);
