///save_chamber_ammo(player, gun object)
// argument0 - player object 
wep = instance_find(argument0.weapon, argument0.weapon_id);

if(wep != obj_wep00) { 
    ds_list_replace(argument0.weapons_ammo, argument0.current_weapon, argument0.weapon.ammo); 
}

with(wep){
    instance_destroy();
}
