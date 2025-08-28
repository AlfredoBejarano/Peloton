/// @description  Individual values
hud_image = 4;
scopex = 287;
scopey = 24;
min_critical = 0;
max_critical = 0;
min_stopping = 0;
max_stopping = 0;
damage         = ds_map_find_value(global.upgrades,"wep04dmg");
max_ammo       = ds_map_find_value(global.upgrades,"wep04ma");
fire_speed     = ds_map_find_value(global.upgrades,"wep04fs");
reload_speed   = ds_map_find_value(global.upgrades,"wep04rs");
event_inherited();

