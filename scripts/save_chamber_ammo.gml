// argument0 - player object 

if(argument0.weapon != obj_wep00) { 
    ds_list_replace(argument0.weapons_ammo, argument0.current_weapon, argument0.weapon.ammo); 
}

with(argument0.weapon){
    instance_destroy();
}
