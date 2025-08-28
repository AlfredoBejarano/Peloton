global.kills ++;

if(audio_is_playing(weapon.aim_sound) && instance_number(obj_en02) <= 1) {
   audio_stop_sound(weapon.aim_sound);
}

with(weapon) {
   instance_destroy();
}
calculate_drop();
siege_upgrades();

