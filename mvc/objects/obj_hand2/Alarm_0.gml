reloading_position = 1;
if(wep.has_magazine == 1) {
    alarm[1] = time;   
} else {
    alarm[1] = time/2;
}
sync_reloading_magazine(self);

