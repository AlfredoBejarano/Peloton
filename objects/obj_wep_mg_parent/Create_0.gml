pump = 0;
position = 0;
ammo_type = 2;
recoil = false;
image_speed = 0;
shooter = false;
has_magazine = true;
aim_sound = snd_wep02_aim;
empty_sound = snd_wep02_empty;
firing_sound = snd_mg_shot;
reload_sound = snd_wep02_reload;
name = ds_list_find_value(get_weapon_data(object_index), 0);
min_critical = 0;
max_critical = 0;
min_stopping = 0;
max_stopping = 0;
event_inherited()