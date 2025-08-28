ammo = 0;
pump = 0;
damage = 30;
max_ammo = 0;
hud_image = 0;
recoil = false;
fire_speed = 6;
image_speed = 0;
image_index = 0;
shooter = false;
reload_speed = 0;
ammo_type = false;
has_magazine = false;

/* load character's knife */
sprite_index = shooter.knife_sprite;

/* usage animation positions */
position = 0;

/* Weapon sound */
firing_sound = snd_wep0_shot;
empty_sound = snd_blank;
aim_sound = snd_wep0_aim;
reload_sound = firing_sound;

name = ds_list_find_value(get_weapon_data(self), 0);

/* */
/*  */
