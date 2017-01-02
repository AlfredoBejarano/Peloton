///switch_weapon(next weapon key/button (pressed), previous weapon key/button (pressed), Player object);

player = argument2;

save_chamber_ammo(player);

if(argument0) {
    if(player.current_weapon == (ds_list_size(player.weapons_inventory) - 1)) {
       player.current_weapon = 0; 
    } else {
        player.current_weapon ++;
    }
} else if(argument1){
    if(player.current_weapon == 0) {
       player.current_weapon = ds_list_size(player.weapons_inventory) - 1; 
    } else {
        player.current_weapon --;
    }
}

player.is_switching = 1;     
player.weapon = ds_list_find_value(player.weapons_inventory, player.current_weapon);
with (instance_create(x - (64 * image_xscale), y-64, player.weapon)) { shooter = argument2; image_xscale = -(argument2.image_xscale); }
player.current_ammo = ds_list_find_value(player.ammo_inventory, player.weapon.ammo_type);
audio_play_sound(snd_wep_switch, 0, false); 
player.hud.alarm[0] = 1;
player.hud.alarm[1] = 30;
