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

// Play aiming sound.
if(argument1) { 
    audio_play_sound(player.weapon.aim_sound, 1, false);
}

if(argument1 && player.is_switching == 0) {
   if(player.is_aiming == 0) {
      player.is_aiming = 1;   
      audio_play_sound(player.weapon.aim_sound, 1, false);    
   } else {
      player.is_aiming = 0;
   }
}

if(player.is_aiming == 1 && argument2) {
   // Weapon firing
   if(player.not_shooting_reloading_but_aiming) {
      perform_shoot(player);     
    }   
}


if(argument3 && player.empty_ammo_and_aiming) {
   audio_play_sound(player.weapon.empty_sound, 0, false)
}

