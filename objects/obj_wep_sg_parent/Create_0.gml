pump = 0;
position = 0;
ammo_type = 3;
recoil = false;
image_speed = 0;
shooter = false;
has_magazine = false;
aim_sound = snd_wep03_aim;
empty_sound = snd_wep03_empty;
firing_sound = snd_wep03_shot;
reload_sound = snd_wep03_reload;
name = ds_list_find_value(get_weapon_data(object_index), 0);
min_critical = 90;
max_critical = 100;
min_stopping = 90;
max_stopping = 100;

// Getting ammo from player's object inventory
ammo = ds_list_find_value(shooter.weapons_ammo, shooter.current_weapon);

