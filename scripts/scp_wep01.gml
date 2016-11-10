// argument0 - player number

// display empty weapon or firing weapon
if(ammo > 0) {
    image_index = 0;
} else {
    image_index = 1;
}

// Syncs arms with player's position
image_xscale = argument0.image_xscale;

// Animations start here
if(recoil) {
    image_index = 1;
    image_angle = 45 * image_xscale;
    x = argument0.x + (96 * image_xscale);
    y = argument0.y - 6;   
} else if(argument0.is_aiming == 1 && argument0.is_reloading == 0) {
    image_angle = 0;
    x = argument0.x + (150 * image_xscale);
    y = argument0.y + 15;
} else if(argument0.is_reloading == 1) {
    image_index = 2;
    image_angle = 20 * image_xscale;
    x = argument0.x + (96 * image_xscale);
    y = argument0.y + 48;
} else if(argument0.is_switching == 1) {
    switch_weapon_animation(argument0, 0);
} else {
    image_angle = 300 * image_xscale;
    x = argument0.x + (64 * image_xscale); 
    y = argument0.y + 76;
}
