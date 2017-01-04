///perform_ia_reload(ia_object);
player = argument0;
player.is_reloading = 1;      
alarm[1] = player.weapon.reload_speed;
player.weapon.alarm[2] = player.weapon.reload_speed;
if(player.weapon.has_magazine == true) {
   player.weapon.alarm[1] = 1;  
   player.hand2.alarm[0] = (player.weapon.reload_speed / 4);
} else {
   player.hand2.alarm[0] = player.hand2.time / 2;
   player.weapon.alarm[3] = player.hand2.time;
}
