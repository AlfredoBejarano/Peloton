// Creates ammo to fill the chamber in the weapons contained in the inventory.
// argument0 - The players weapon inventory DS_List.

wa = ds_list_create();

for(i = 0; i < ds_list_size(argument0); i++) {
    tw = instance_create(x,y, ds_list_find_value(argument0, i));
    ds_list_add(wa, tw.max_ammo);
    with(tw) { instance_destroy(); }    
}

return wa;
