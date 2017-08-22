///draw_hud(is mobile device)

if(argument[0]) {
    draw_sprite_ext(spr_weapon_hud, dwep.hud_image, view_xview[0] + 408, view_yview[0] + 8, (xs * - 2), (ys*2), 0, c_white, image_alpha);
    draw_set_font(fnt_hud);
    if(dwep.object_index != obj_wep00) {
        if(dwep.ammo < 10) {
            draw_text_outline(view_xview[0] + (32 * (xs*2)) , view_yview[0]+ (70 * (ys*2)), c_white, c_ltgray, dwep.ammo, image_alpha / 4);
        } else if(dwep.ammo > 9 == dwep.ammo < 99) {
            draw_text_outline(view_xview[0]+  (16 * (xs*2)) , view_yview[0] + (70 * (ys*2)), c_white, c_ltgray, dwep.ammo, image_alpha / 4);
        } else {
            draw_text_outline(view_xview[0]+  (2 * (xs*2)) , view_yview[0] + (70 * (ys*2)), c_white, c_ltgray, dwep.ammo, image_alpha / 4);
        }
        draw_text_outline(view_xview[0]+ (75 * (xs*2)) , view_yview[0] + (80 * (ys*2)), c_white, c_ltgray, obj_pl01.current_ammo, image_alpha / 4);
    }
    draw_text_outline(view_xview[0] + (8 * (xs*2)), view_yview[0] + (112 * (ys*2)), c_white, c_ltgray, dwep.name, image_alpha / 4);
    draw_sprite_ext(spr_heal, 0, view_xview[0] + ((view_wview - 144) * (xs)), view_yview[0] + (8 * (ys)), 2, 2, 0, c_white, 1);
    draw_text_outline(view_xview[0] + ((view_wview - 228) * (xs)), view_yview[0] + (24 * (ys)), c_white, c_ltgray, obj_pl01.heals, 0.5);
} else {
    draw_sprite_ext(spr_weapon_hud, dwep.hud_image, view_xview[0] + (view_wview[0] - (232 * xs)), view_yview[0] + (view_hview[0] - (182 * ys)), (xs), (ys), 0, c_white, image_alpha);
    draw_set_font(fnt_hud);
    if(dwep.object_index != obj_wep00) {
        if(dwep.ammo < 10) { 
            draw_text_outline(view_xview[0] + (view_wview[0] - (84 * xs)) , view_yview[0] + (view_hview[0] - 128 * (ys)), c_white, c_ltgray, dwep.ammo, image_alpha / 4);
        } else if(dwep.ammo > 9 && dwep.ammo < 99) {
            draw_text_outline(view_xview[0] + (view_wview[0] - (84 * xs)) , view_yview[0] + (view_hview[0] - 128 * (ys)), c_white, c_ltgray, dwep.ammo, image_alpha / 4);
        } else {
            draw_text_outline(view_xview[0] + (view_wview[0] - (84 * xs)),  view_yview[0] + (view_hview[0] - 128 * (ys)), c_white, c_ltgray, dwep.ammo, image_alpha / 4);
        }
        if(obj_pl01.current_ammo > 99) {
            draw_text_outline(view_xview[0] + (view_wview[0] - (144 * xs)) , view_yview[0] + (view_hview[0] - 100 * (ys)), c_white, c_ltgray, obj_pl01.current_ammo, image_alpha / 4);
        } else if(obj_pl01.current_ammo > 9){
            draw_text_outline(view_xview[0] + (view_wview[0] - (128 * xs)) , view_yview[0] + (view_hview[0] - 100 * (ys)), c_white, c_ltgray, obj_pl01.current_ammo, image_alpha / 4);
        } else {
            draw_text_outline(view_xview[0] + (view_wview[0] - (112 * xs)) , view_yview[0] + (view_hview[0] - 100 * (ys)), c_white, c_ltgray, obj_pl01.current_ammo, image_alpha / 4);
        }
    }
    draw_sprite_ext(spr_heal, 0, view_xview[0] + ((view_wview - 80) * (xs)), view_yview[0] + (view_hview[0] - (216 * ys)), 1, 1, 0, c_white, 1);
    draw_set_font(fnt_weapon_name);
    draw_text_outline(view_xview[0] + (view_wview[0] - (232 * xs)), view_yview[0] + (view_hview[0] - 64 * (ys)), c_white, c_ltgray, dwep.name, image_alpha / 4);
    draw_text_outline(view_xview[0] + ((view_wview - 96) * (xs)), view_yview[0] + (view_hview[0] - (216 * ys)), c_white, c_ltgray, obj_pl01.heals, 0.5);
    draw_set_font(-1);
}
