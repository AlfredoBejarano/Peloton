///perform_ia_reload(ia_object);
player = argument0;
player.is_reloading = 1;      
alarm[1] = wep.reload_speed;
wep.alarm[2] = wep.reload_speed;
if(wep.has_magazine == true) {
   wep.alarm[1] = 1;  
   player.hand2.alarm[0] = (wep.reload_speed / 4);
} else {
   player.hand2.alarm[0] = player.hand2.time / 2;
   wep.alarm[3] = player.hand2.time;
}
