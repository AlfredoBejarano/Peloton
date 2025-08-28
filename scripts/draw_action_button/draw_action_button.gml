/// @description  draw_action_button(x, y, key/button);
/// @param x
/// @param  y
/// @param  key/button
function draw_action_button(argument0, argument1, argument2) {
	// Rename arguments to more legible variables.

	x1 = argument0;
	y1 = argument1;
	key = get_keyname(argument2);
	spr = spr_gp_buttons;

	if(global.touch) { spr = spr_dv_buttons; }
	draw_sprite(spr, key, x1, y1);



}
