// argument0 - player number

// Syncs arms with player's position
image_xscale = argument0.image_xscale;

if(argument0.is_reloading == 0) { image_index = 0; }

// Animations start here
if(recoil) {
    image_index = 0;
    x = argument0.x + (96 * image_xscale);
    y = argument0.y-104;   
} else if(argument0.is_aiming == 1 && argument0.is_reloading == 0 && argument0.is_switching == 0) {
    image_angle = 0;
    x = argument0.x + (120 * image_xscale);
    y = argument0.y-104;
} else if(argument0.is_reloading == 1) {
    image_index = 1;
    image_angle = 20 * image_xscale;
    x = argument0.x + (96 * image_xscale);
    y = argument0.y-80;
} else if(argument0.is_switching == 1) {
    switch_weapon_animation(argument0, 1);
} else if(argument0.is_taking_damage == 1) {
    scp_wep_dam(argument0);
} else {
    image_angle = 345 * image_xscale;
    x = argument0.x + (64 * image_xscale); 
    y = argument0.y-52;
}
