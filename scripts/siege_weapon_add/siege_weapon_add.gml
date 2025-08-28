/// @description siege_weapon_add(weapon)
/// @param weapon
function siege_weapon_add(argument0, argument1) {
	global.upgrade ++;

	wdata = get_weapon_data(argument0);
	name = ds_list_find_value(wdata, 0);
	atype = ds_list_find_value(wdata, 1);
	image = ds_list_find_value(wdata, 2);
	ds_list_destroy(wdata);

	keys = siege_keys_factory(argument0);
	key = ds_list_find_value(keys, 2);
	ds_list_destroy(keys);

	capacity = real(ds_map_find_value(global.upgrades, key));

	ds_list_add(argument1.weapons_ammo, capacity);
	ds_list_add(argument1.weapons_inventory, argument0);
	ds_list_replace(argument1.ammo_inventory, atype, real(capacity * 2));

	set_item_picker_data(name, real(capacity * 3), image, snd_weapon_add);

}
