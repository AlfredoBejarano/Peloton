///perform_reload(player object)
// argument0 - player object

player = argument0.object_index;
wep = instance_find(player.weapon, player.weapon_id);
hnd2 = instance_find(obj_hand2, player.hand2id);

if(player.reload_condition1 && (player.reload_condition2 || player.reload_condition3)) {
    player.is_reloading = 1;      
    alarm[1] = wep.reload_speed;
    wep.alarm[2] = wep.reload_speed;
    
    if(wep.has_magazine == true) {
        wep.alarm[1] = 1;  
        hnd2.alarm[0] = (wep.reload_speed / 4);
    } else {
        hnd2.alarm[0] = hnd2.time / 2;
        wep.alarm[3] = hnd2.time;
    }
}
