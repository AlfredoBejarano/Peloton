// argument0 - player number

// Display open bolt
image_index = pump;

// Syncs arms with player's position
image_xscale = argument0.image_xscale;

// Animations start here
if(recoil) {
    image_angle = 45;
    x = argument0.x + (-64 * image_xscale);
    y = argument0.y + 80;   
} else if(argument0.is_aiming == 1 && argument0.is_reloading == 0) {
    image_angle = 0;
    x = argument0.x + (-32 * image_xscale);
    y = argument0.y + 64;
} else if(argument0.is_reloading == 1) {
    image_angle = 15;
    x = argument0.x + (16 * image_xscale);
    y = argument0.y + 72;
} else {
    image_angle = 350 * image_xscale;
    x = argument0.x + (-32 * image_xscale); 
    y = argument0.y + 64;
}

