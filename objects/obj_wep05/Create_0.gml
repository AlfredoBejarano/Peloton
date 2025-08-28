/// @description  Set the individual values for this gun.
// Laser origins.
hud_image = 5;
// Individual values
shotx = 120;
shoty = 9;
min_critical = 95;
max_critical = 100;
min_stopping = 80;
max_stopping = 100;
damage         = ds_map_find_value(global.upgrades,"wep05dmg");
max_ammo       = ds_map_find_value(global.upgrades,"wep05ma");
fire_speed     = ds_map_find_value(global.upgrades,"wep05fs");
reload_speed   = ds_map_find_value(global.upgrades,"wep05rs");
// inherited event
event_inherited();

