if(distance_to_object(target) <  32) {
   picker = obj_pl01.picker;
   picker.name = "Shotgun Ammo"
   picker.quantity = quantity;
   picker.subimage = 3;
   picker.alarm[0] = 1;
   audio_play_sound(snd_dp_bullet, 0, false);
}

