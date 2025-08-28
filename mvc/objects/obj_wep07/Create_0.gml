/// @description  Individual values
shotx = 290;
shoty = 45;
angle = 280;
hud_image = 7;
min_critical = 80;
max_critical = 100;
min_stopping = 99;
max_stopping = 100;
damage         = ds_map_find_value(global.upgrades,"wep07dmg");
max_ammo       = ds_map_find_value(global.upgrades,"wep07ma");
fire_speed     = ds_map_find_value(global.upgrades,"wep07fs");
reload_speed   = ds_map_find_value(global.upgrades,"wep07rs");
event_inherited(); // Use parent create event code.

