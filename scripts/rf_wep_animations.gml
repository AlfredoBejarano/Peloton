// shooter - player number

// Syncs arms with player's position
image_xscale = shooter.image_xscale;

if(shooter.is_reloading == 0) { image_index = 0; }

// Animations start here
if(recoil) {
    image_index = 0;
    x = shooter.x + (96 * image_xscale);
    y = shooter.y-104;   
} else if(shooter.is_aiming == 1 && shooter.is_reloading == 0 && shooter.is_switching == 0) {
    image_angle = 0;
    x = shooter.x + (120 * image_xscale);
    y = shooter.y-104;
} else if(shooter.is_reloading == 1) {
    image_index = 1;
    image_angle = 20 * image_xscale;
    x = shooter.x + (96 * image_xscale);
    y = shooter.y-80;
} else if(shooter.is_switching == 1) {
    switch_weapon_animation(shooter, 1);
} else if(shooter.is_taking_damage == 1) {
    scp_wep_dam(shooter);
} else {
    image_angle = 345 * image_xscale;
    x = shooter.x + (64 * image_xscale); 
    y = shooter.y-52;
}
