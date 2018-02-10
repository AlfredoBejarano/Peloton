// argument0 - Aim key (check).
// argument1 - Aim key (pressed).
// argument2 - Shoot key (check).
// argument3 - Shoot key (pressed).

// Revert aiming when the player is not doing it.
if(!argument1 && not_shooting_knife) {
    is_aiming = 0;    
}

// Play aiming sound.
if(argument1) { 
    audio_play_sound(weapon.aim_sound, 1, false);
}

// Weapon aiming (hold).
if(argument0 && is_switching == 0) {

    is_aiming = 1;
    hud.alarm[0] = 1;
    
    // Weapon firing
    if(argument2 && not_shooting_reloading_but_aiming) {
        perform_shoot(player);
    }
    
    //Pressing shoot button while weapon is empty
    if(argument3 && empty_ammo_and_aiming) {
        audio_play_sound(player.weapon.empty_sound, 0, false)
    }
}

