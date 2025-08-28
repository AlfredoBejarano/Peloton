alarm[3] = wep.reload_speed / 4;
if(wep.has_magazine == true) {
   reloading_position = 3;
} else {
   alarm[4] = wep.reload_speed / 8;
   wep.alarm[1] = wep.reload_speed / 8;
   wep.alarm[2] = wep.reload_speed / 4;
}


