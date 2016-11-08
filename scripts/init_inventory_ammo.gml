/**
*** Creating initial ammo in the bag, this must be used in the Time attack and Horde mode.
*** Ccampaign and Sicarios mode will have this values in the save data file.
*/

// argument0 - Players weapon's inventory.
ai = ds_list_create();

for(i = 0; i < ds_list_size(argument0); i++) {
    tw = instance_create(x,y, ds_list_find_value(argument0, i));
    ds_list_add(weapons_ammo, tw.max_ammo);
    ds_list_insert(ai, tw.ammo_type, tw.max_ammo*2);
    with(tw) { instance_destroy(); }    
}

return ai;
