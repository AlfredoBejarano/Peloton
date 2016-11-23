/**
*** Creating initial ammo in the bag, this must be used in the Time attack and Horde mode.
*** Ccampaign and Sicarios mode will have this values in the save data file.
*/

// argument0 - Players weapon's inventory.
ai = ds_list_create();
// initialize all ammo type at 0.
ds_list_add(ai, 0, 0, 0, 0);

size = ds_list_size(argument0);

for(i = 0; i < ds_list_size(argument0); i++) {
    tw = instance_create(x,y, ds_list_find_value(argument0, i));
    current_supply = ds_list_find_value(ai, tw.ammo_type);
    
    if(current_supply == 0) {
        current_supply = tw.max_ammo*2;
    } else {
        current_supply = current_supply + tw.max_ammo*2;
    }
    
    ds_list_replace(ai, tw.ammo_type, current_supply);
    with(tw) { instance_destroy(); }    
}

return ai;
