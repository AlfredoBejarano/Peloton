// Initializes inventories.
weapons_ammo = ds_list_create();
ammo_inventory = ds_list_create();
settings = settings_factory(global.control, self);
hud = ds_list_find_value(settings, 2);
character = ds_list_find_value(settings, 3);
weapons_inventory = ds_list_find_value(settings, 1);

// Set the first weapon in the inventory as the current weapon.
weapon = ds_list_find_value(weapons_inventory, 0);

// DS_List for storing inventory's weapons chamber ammmo
weapons_ammo = init_weapon_ammo(weapons_inventory);

// Sets ammo for the inventory
ammo_inventory = init_inventory_ammo(weapons_inventory);