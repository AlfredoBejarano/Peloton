// argument0 - player number

// Display open bolt
image_index = pump;

// Syncs arms with player's position
image_xscale = argument0.image_xscale;

// Animations start here
if(recoil) {
    image_angle = 45 * image_xscale;
    x = argument0.x + (16 * image_xscale);
    y = argument0.y + 48;   
} else if(argument0.is_aiming == 1 && argument0.is_reloading == 0) {
    image_angle = 0;
    x = argument0.x + (88 * image_xscale);
    y = argument0.y + 24;
} else if(argument0.is_reloading == 1) {
    image_angle = 15 * image_xscale;
    x = argument0.x + (8 * image_xscale);
    y = argument0.y + 64;
} else if(argument0.is_switching == 1) {
    switch_weapon_animation(argument0, 1);
} else {
    image_angle = 10 * image_xscale;
    x = argument0.x + 32; 
    y = argument0.y + 64;
}

