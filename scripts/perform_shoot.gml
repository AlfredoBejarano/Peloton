///perform_shoot(player object, wep object)
// argument0 - Player object

player = argument0;
wep = instance_find(weapon, weapon_id);

if(wep.ammo > 0) {
   wep.alarm[4] = 1;
    player.is_shooting = 1;
    wep.recoil = true;
    if(wep.has_magazine) { 
       wep.alarm[0] = wep.fire_speed - (wep.fire_speed/2); 
    } else { 
        wep.alarm[0] = wep.fire_speed - ((wep.fire_speed/4)*3); 
        wep.alarm[1] = wep.fire_speed - (wep.fire_speed/2)
        wep.alarm[2] = wep.fire_speed - (wep.fire_speed/4);         
    }
    
    wep.ammo --;
    audio_play_sound(wep.firing_sound, 0, false);
    alarm[0] = wep.fire_speed;
}

