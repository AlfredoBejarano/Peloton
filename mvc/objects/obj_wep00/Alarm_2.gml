shooter.weapon = ds_list_find_value(shooter.weapons_inventory, shooter.current_weapon);
instance_create(shooter.x, shooter.y, shooter.weapon);
shooter.weapon.shooter = shooter;
shooter.is_aiming = 0;
shooter.is_shooting = 0;
shooter.is_switching = 1;
shooter.weapon.alarm[5] = 1;
shooter.alarm[2] = 6;
audio_play_sound(snd_wep_switch, 0, false); 
instance_destroy();

