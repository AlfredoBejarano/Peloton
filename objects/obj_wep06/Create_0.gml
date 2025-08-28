/// @description  Inherit the parent MachineGun values.
// Laser origin coordenates.
hud_image = 6;
shotx = 220;
shoty = 24;
// Individual values.
min_critical = 30;
max_critical = 100;
min_stopping = 95;
max_stopping = 100;
damage         = ds_map_find_value(global.upgrades,"wep06dmg");
max_ammo       = ds_map_find_value(global.upgrades,"wep06ma");
fire_speed     = ds_map_find_value(global.upgrades,"wep06fs");
reload_speed   = ds_map_find_value(global.upgrades,"wep06rs");
// Inherit event
event_inherited();

