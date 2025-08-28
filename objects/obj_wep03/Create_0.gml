/// @description  Individual values
shotx = 298;
shoty = 43;
angle = 360;
hud_image = 3;
min_critical = 80;
max_critical = 100;
min_stopping = 99;
max_stopping = 100;
damage         = ds_map_find_value(global.upgrades,"wep03dmg");
max_ammo       = ds_map_find_value(global.upgrades,"wep03ma");
fire_speed     = ds_map_find_value(global.upgrades,"wep03fs");
reload_speed   = ds_map_find_value(global.upgrades,"wep03rs");
event_inherited(); // Use parent create event code.

