// Display open bolt
image_index = pump;

// Syncs arms with player's position
image_xscale = shooter.image_xscale;

// Animations start here
if(recoil) {
    image_angle = 45 * image_xscale;
    x = shooter.x + (16 * image_xscale);
    y = shooter.y-80;   
} else if(shooter.is_aiming == 1 && shooter.is_reloading == 0 && shooter.is_switching == 0) {
    image_angle = 0;
    x = shooter.x + (88 * image_xscale);
    y = shooter.y-104;
} else if(shooter.is_reloading == 1) {
    image_angle = 15 * image_xscale;
    x = shooter.x + (8 * image_xscale);
    y = shooter.y-64;
} else if(shooter.is_switching == 1) {
    switch_weapon_animation(shooter, 1);
} else if(shooter.is_taking_damage == 1) {
    scp_wep_dam(shooter);
} else {
    image_angle = 10 * image_xscale;
    x = shooter.x + 32; 
    y = shooter.y-64;
}

