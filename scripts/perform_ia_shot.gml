///perform_shoot(player object)
var player = obj_plIA;

if(player.weapon.ammo > 0) {
    player.weapon.alarm[4] = 1;
    player.is_shooting = 1;
    player.weapon.recoil = true;
    if(player.weapon.has_magazine) { 
       player.weapon.alarm[0] = player.weapon.fire_speed - (player.weapon.fire_speed/2); 
    } else { 
        player.weapon.alarm[0] = player.weapon.fire_speed - ((player.weapon.fire_speed/4)*3); 
        player.weapon.alarm[1] = player.weapon.fire_speed - (player.weapon.fire_speed/2)
        player.weapon.alarm[2] = player.weapon.fire_speed - (player.weapon.fire_speed/4);         
    }
    
    player.weapon.ammo --;
    audio_play_sound(player.weapon.firing_sound, 0, false);
    alarm[0] = player.weapon.fire_speed;
}
