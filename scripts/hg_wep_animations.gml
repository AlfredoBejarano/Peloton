/// Animation positions for handguns
if(ammo > 0) {
    image_index = 0;
} else {
    image_index = 1;
}

// Syncs arms with player's position
image_xscale = shooter.image_xscale;

// Animations start here
if(recoil) {
    image_index = 1;
    image_angle = 45 * shooter.image_xscale;
    x = shooter.x + (96 * shooter.image_xscale);
    y = shooter.y-134;   
} else if(shooter.is_aiming == 1 && shooter.is_reloading == 0 && shooter.is_switching == 0) {
    image_angle = 0;
    x = shooter.x + (150 * shooter.image_xscale);
    y = shooter.y-113;
} else if(shooter.is_reloading == 1) {
    image_index = 2;
    image_angle = 20 * shooter.image_xscale;
    x = shooter.x + (96 * shooter.image_xscale);
    y = shooter.y-80;
} else if(shooter.is_switching == 1) {
    switch_weapon_animation(shooter, 0);
} else if(shooter.is_taking_damage == 1) {
    scp_wep_dam(shooter);
} else {
    image_angle = 300 * shooter.image_xscale;
    x = shooter.x + (64 * shooter.image_xscale); 
    y = shooter.y-52;
}
