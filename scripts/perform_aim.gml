// argument0 - Aim key (check).
// argument1 - Aim key (pressed).
// argument2 - Shoot key (check).
// argument3 - Shoot key (pressed).
// argument4 - Aim key (released).
// argument5 - Reload key (pressed).
// argument6 - Player object.

var player = argument6;

// HUD transparency effect
if(argument1 || (argument5 && player.ammo_available)) { 
    player.hud.alarm[0] = 1; 
}

if(argument4 || argument5) { 
    player.hud.alarm[1] = 120; 
}

// Revert aiming when the player is not doing it.
if(!argument1 && player.not_shooting_knife) {
    player.is_aiming = 0;    
}

// Play aiming sound.
if(argument1) { 
    audio_play_sound(player.weapon.aim_sound, 1, false);
}

// Weapon aiming (hold).
if(argument0 && player.is_switching == 0) {

    player.is_aiming = 1;
    player.hud.alarm[0] = 1;
    
    // Weapon firing
    if(argument2 && player.not_shooting_reloading_but_aiming) {
        perform_shoot(player);
    }
    
    //Pressing shoot button while weapon is empty
    if(argument3 && player.empty_ammo_and_aiming) {
        audio_play_sound(player.weapon.empty_sound, 0, false)
    }
}

