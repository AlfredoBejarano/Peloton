draw_self();

draw_facial_expression();

if(weapon == obj_wep00) {
    draw_sprite_ext(
        knife_sprite, 
        1, 
        x + (16 * image_xscale), 
        y - 128 + 64, image_xscale,
        image_yscale,
        225 * image_xscale,
        -1,
        1
    ); 
} else {
    draw_sprite_ext(
        knife_sprite, 
        2, 
        x + (16 * image_xscale), 
        y -128 + 64, image_xscale,
        image_yscale,
        225 * image_xscale,
        -1,
        1
    );
}

