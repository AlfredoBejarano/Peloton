///save_chamber_ammo(player, gun object)
// argument0 - player object 
wep = argument0.weapon;

if(wep.object_index != obj_wep00) { 
    ds_list_replace(argument0.weapons_ammo, argument0.current_weapon, argument0.weapon.ammo); 
}

with(wep){
    instance_destroy();
}
