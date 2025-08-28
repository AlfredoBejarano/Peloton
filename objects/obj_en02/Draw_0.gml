draw_self();
if(dying == 0) {
   draw_set_alpha(1);
} else {
   draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, 1, 1, c_white, red_alpha);   
}
draw_sprite_ext(spr_eye, 3 + eye_index, x + (60*image_xscale ) , y - 176,  image_xscale, image_yscale, 0, c_white, 1);
draw_sprite_ext(spr_eye, 3 + eye_index, x + (95* image_xscale) , y - 176, -image_xscale, image_yscale, 0, c_white, 1);   

