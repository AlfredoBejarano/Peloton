pump = 0;
position = 0;
ammo_type = 1;
recoil = false;
image_speed = 0;
shooter = false;
has_magazine = true;
aim_sound = snd_wep01_aim;
empty_sound = snd_wep01_empty;
firing_sound = snd_hg_shot;
reload_sound = snd_wep01_reload;
name = ds_list_find_value(get_weapon_data(object_index), 0);
min_critical = 0;
max_critical = 0;
min_stopping = 0;
max_stopping = 0;
critical = irandom_range(min_critical, max_critical);
stopping_power = irandom_range(min_stopping, max_stopping);
// Getting ammo from player's object inventory
ammo = ds_list_find_value(shooter.weapons_ammo, shooter.current_weapon);

