// argument0 - player number

// display empty weapon or firing weapon
if(argument0.ammo > 0) {
    image_index = 0;
} else {
    image_index = 1;
}


// Syncs arms with player's position
image_xscale = argument0.image_xscale;

// Uses proper script animaiton for each weapon type
switch(argument0.weapon) {
    case 1:
        // Handgun animations script
        scp_wep01_animations(argument0);
    break;
}

