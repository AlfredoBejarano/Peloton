///draw_hud()
var xp = view_xview[0] + (145 * xs);
var yp = view_yview[0] + (75 * ys);
var color = c_green;
var chp = player.hp / player.basehp; // Player current HP.
if(chp >= 1 && chp <= 0.75) {
    color = c_green;
} else if(chp <= 0.75 && chp >= 0.50) {
    color = c_yellow;
} else if(chp <= 0.50 && chp >= 0.25) {
    color = c_orange;
} else if(chp <= 0.25) {
    color = c_red;
}
var health_to_draw = "(" + string(player.hp) + "/" + string(player.basehp) + ")";
var aspect_ratio = abs(dwep.sprite_width) / dwep.sprite_height;

/*=== HUD drawing ==*/
draw_sprite(spr_hud, 0, xp, yp); // Draws the HUD image.
if(player.hp >= 0) { // Don't draw the healthbar when hp is below 0.
    draw_rectangle_colour(xp + (72 * xs), yp + (64 * ys), (xp + (72 * xs)) + ((330 * xs) * chp), yp + (71 * ys), color, color, color, color, false); // Draws the player health.
}
draw_sprite(spr_weapon_hud, dwep.hud_image, xp + (5 * xs), yp + (13 * ys)); // Draws the weapon.
draw_set_font(fnt_weapon_name);
draw_text_colour(view_xview[0] + (216 * xs), view_yview[0] + (151 * ys), dwep.name, c_white, c_white, c_white, c_white, 1); //Draws weapon name.
if(dwep.object_index != obj_wep00) { // Don't draw knife's ammo because it doesn't use ammo.
    draw_text_colour(view_xview[0] + (256 * xs), yp + (30 * ys), string(dwep.ammo) + "/" + string(player.current_ammo), c_white, c_white, c_white, c_white, 1); //Draws weapon ammo.
}
draw_set_font(fnt_health);
draw_text_colour(xp + ((430 * xs) - ((string_length(health_to_draw) * 12)*xs)), view_yview[0] + (151 * ys), health_to_draw, color, color, color, color, 1); //Draws player health.
draw_sprite_ext(spr_dropabbles_en, 0, xp + (482 * xs), yp + (43 * ys), 1, 1, 0, c_white, 1);
draw_set_font(fnt_menu);
draw_text_colour(xp + (462 * xs), yp + (56 * ys), string(player.heals), c_red, c_red, c_red, c_red, 1);
