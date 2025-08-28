/// @description  Set the individual values for this gun.
// Laser origins.
hud_image = 1;
// Individual values
shotx = 111;
shoty = 12;
min_critical = 90;
max_critical = 100;
min_stopping = 90;
max_stopping = 100;
damage         = ds_map_find_value(global.upgrades,"wep01dmg");
max_ammo       = ds_map_find_value(global.upgrades,"wep01ma");
fire_speed     = ds_map_find_value(global.upgrades,"wep01fs");
reload_speed   = ds_map_find_value(global.upgrades,"wep01rs");
// Inherited event
event_inherited();

