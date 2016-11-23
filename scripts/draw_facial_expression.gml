// draw face
if(is_reloading == 1) {
    draw_sprite_ext(spr_eye, eye_index, x + (80*image_xscale), y - 152, image_xscale, image_yscale, image_xscale*350, c_white, 1);
    draw_sprite_ext(spr_eye, eye_index, x + (108*image_xscale), y - 146, -image_xscale, image_yscale, image_xscale*340, c_white, 1);
    draw_sprite_ext(mouth_sprite, mouth_index, x + (72*image_xscale), y - 120, image_xscale, image_yscale, image_xscale*350, c_white, 1);
} else if(is_aiming == 1) {
    draw_sprite_ext(spr_eye, eye_index, x + (80*image_xscale), y - 160, image_xscale, image_yscale, 0, c_white, 1);
    draw_sprite_ext(spr_eye, eye_index, x + (108*image_xscale), y - 160, -image_xscale, image_yscale, 0, c_white, 1);
    draw_sprite_ext(mouth_sprite, mouth_index, x + (88*image_xscale), y - 128, image_xscale, image_yscale, 350, c_white, 1);
} else if(is_taking_damage == 1) {
    if(damage_direction == 0) {
        draw_sprite_ext(spr_eye, eye_index, x + (80*image_xscale), y - 160, image_xscale, image_yscale, -1*image_angle*image_xscale, c_white, 1);        
        draw_sprite_ext(spr_eye, eye_index, x + (108*image_xscale), y - 160, -image_xscale, image_yscale, -1*image_angle*image_xscale, c_white, 1);
        draw_sprite_ext(mouth_sprite, mouth_index, x + (88*image_xscale), y - 128, image_xscale, image_yscale, -1*image_angle*image_xscale, c_white, 1);        
    } else {
        draw_sprite_ext(spr_eye, eye_index, x + (32*image_xscale), y - 176, image_xscale, image_yscale, -1*image_angle*image_xscale, c_white, 1);        
        draw_sprite_ext(spr_eye, eye_index, x + (60*image_xscale), y - 176, -image_xscale, image_yscale, -1*image_angle*image_xscale, c_white, 1);
        draw_sprite_ext(mouth_sprite, mouth_index, x + (40*image_xscale), y - 144, image_xscale, image_yscale, -1*image_angle*image_xscale, c_white, 1);        
    }
} else {
    draw_sprite_ext(spr_eye, eye_index, x + (64*image_xscale), y - 168, image_xscale, image_yscale, 0, c_white, 1);
    draw_sprite_ext(spr_eye, eye_index, x + (96*image_xscale), y - 168, -image_xscale, image_yscale, 0, c_white, 1);
    draw_sprite_ext(mouth_sprite, mouth_index, x + (80*image_xscale), y - 128, image_xscale, image_yscale, 0, c_white, 1);
}
