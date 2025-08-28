/// @description  Inherit the parent MachineGun values.
// Laser origin coordenates.
hud_image = 2;
shotx = 204;
shoty = 27;
// Individual values.
min_critical = 50;
max_critical = 100;
min_stopping = 90;
max_stopping = 100;
damage         = ds_map_find_value(global.upgrades,"wep02dmg");
max_ammo       = ds_map_find_value(global.upgrades,"wep02ma");
fire_speed     = ds_map_find_value(global.upgrades,"wep02fs");
reload_speed   = ds_map_find_value(global.upgrades,"wep02rs");
// Inherit event
event_inherited();

