pump = 0;
position = 0;
ammo_type = 4;
hud_image = 4;
recoil = false;
image_speed = 0;
shooter = false;
has_magazine = true;
aim_sound = snd_wep04_aim;
empty_sound = snd_wep03_empty;
firing_sound = snd_wep04_shot;
reload_sound = snd_wep04_reload;
name = ds_list_find_value(get_weapon_data(object_index), 0);

/* upgradable values */ 
critical = irandom_range(min_critical, max_critical);
stopping_power = irandom_range(min_stopping, max_stopping);
damage         = ds_map_find_value(global.upgrades,"wep04dmg");
max_ammo       = ds_map_find_value(global.upgrades,"wep04ma");
fire_speed     = ds_map_find_value(global.upgrades,"wep04fs");
reload_speed   = ds_map_find_value(global.upgrades,"wep04rs");


// Getting ammo from player's object inventory
ammo = ds_list_find_value(shooter.weapons_ammo, shooter.current_weapon);

/* */
/*  */
