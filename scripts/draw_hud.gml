///draw_hud()
var color = gp_green;
var radius = 64 * xs;
var hudy = (128 * ys);
var thickness = 16 * xs;
var segments = player.hp;
var total_segments = player.basehp // Total segments of the HUD healthbar.
var current_hp = player.hp / player.basehp; // Player current HP.
var hudx = display_get_gui_width() - (188 * xs) // Hud draw center in X


if(current_hp >= 1 && current_hp <= 0.75) { // Set the health color to green if is between 100% and 75%.
    color = gp_green;
} else if(current_hp <= 0.75 && current_hp >= 0.50) { // Set the health color to yellow if is between 75% and 50%.
    color = gp_yellow;
} else if(current_hp <= 0.50 && current_hp >= 0.25) { // Set the health color to orange if is between 50% and 25%.
    color = c_orange;
} else if(current_hp <= 0.25) { // Set the health color to red if it falls below 25%.
    color = gp_red;
}
draw_set_alpha(0.5)
draw_circle_colour(hudx, hudy, radius, c_black, c_black, false); // Draw the HUD backplate.
draw_set_alpha(1)
draw_ring_bar(hudx, hudy, radius, thickness, total_segments, total_segments, 0, 360, -1, c_black); // Draw black ring behind the hud.
draw_ring_bar(hudx, hudy, radius, thickness, total_segments, total_segments, 0, 270, -1, gp_bt_inner); // Draw blank health ring.
draw_ring_bar(hudx, hudy, radius, thickness, total_segments, segments, 0, 270, -1, color); // Draw health ring.
draw_set_font(fnt_hud_ammo)
draw_text_outline(display_get_gui_width() - (104 * xs), (48 * ys), c_black, gp_yellow, string(player.heals), 0.75); // Draw player health items quantity.
if(dwep.object_index != obj_wep00) { // Don't draw knife's ammo because it doesn't use ammo.
    draw_text_outline(display_get_gui_width() - (88 * xs), (130 * ys), c_black, c_white, string(dwep.ammo), 1); // Draw the weapon ammo.
    draw_text_outline(display_get_gui_width() - (88 * xs), (168 * ys), c_black, c_white, string(player.current_ammo), 1); // Draw the current type of ammo
}
draw_sprite(spr_weapon_hud, dwep.hud_image, hudx, hudy); // Draws the weapon icon.
