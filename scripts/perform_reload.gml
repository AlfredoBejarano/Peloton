// argument0 - player object

player = argument0;

if(player.reload_condition1 && (player.reload_condition2 || player.reload_condition3)) {
    player.is_reloading = 1;
    player.weapon.alarm[1] = 1;        
    alarm[1] = player.weapon.reload_speed;
    weapon.alarm[2] = player.weapon.reload_speed;
    
    if(player.weapon.has_magazine == true) {
        player.hand2.alarm[0] = (player.weapon.reload_speed / 4);
    } else {
        player.weapon.pump = 1;
        player.hand2.alarm[0] = player.hand2.time / 2;
        player.weapon.alarm[3] = player.hand2.time;
    }
}
