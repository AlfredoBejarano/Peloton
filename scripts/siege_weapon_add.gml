///siege_weapon_add(weapon)
global.upgrade ++;

wdata = get_weapon_data(argument[0]);
name = ds_list_find_value(wdata, 0);
atype = ds_list_find_value(wdata, 1);
image = ds_list_find_value(wdata, 2);
ds_list_destroy(wdata);

keys = siege_keys_factory(argument[0]);
key = ds_list_find_value(keys, 2);
ds_list_destroy(keys);

capacity = real(ds_map_find_value(global.upgrades, key));

ds_list_add(obj_pl01.weapons_ammo, capacity);
ds_list_add(obj_pl01.weapons_inventory, argument[0]);
ds_list_replace(obj_pl01.ammo_inventory, atype, real(capacity * 2));

set_item_picker_data(name, real(capacity * 3), image, snd_weapon_add);
