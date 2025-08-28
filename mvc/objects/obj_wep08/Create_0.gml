/// @description  Individual values
hud_image = 4;
scopex = 287;
scopey = 26;
min_critical = 98;
max_critical = 100;
min_stopping = 58;
max_stopping = 100;
damage         = ds_map_find_value(global.upgrades,"wep08dmg");
max_ammo       = ds_map_find_value(global.upgrades,"wep08ma");
fire_speed     = ds_map_find_value(global.upgrades,"wep08fs");
reload_speed   = ds_map_find_value(global.upgrades,"wep08rs");
event_inherited();

