/* Script for using the knife */
// argument0 - Player object
// argument1 - Shoot key (pressed).

player = argument0;

// Prevents knife being used in unexpected cases.
if(player.knife_restrict) {
    player.can_knife = false;
} else {
    player.can_knife = true;
}

// Knife usage
if(argument1 && player.can_knife) {
    // player is aiming
    player.is_aiming = 1;
    
    // player is "firing" the knife
    player.is_shooting = 1;
        
    // save state of the currents weapon chamber ammo and destroy it.
    save_chamber_ammo(argument0);
       
    // change current weapon to the knife
    player.weapon = obj_wep00;
    with(instance_create(x + (16 * image_xscale), y - 64, player.weapon)) { 
        shooter = argument0; 
        alarm[0] = 1;
    }
    audio_play_sound(player.weapon.aim_sound, 0, false);   
    player.hud.alarm[0] = 1;
    player.hud.alarm[1] = 36;
}
