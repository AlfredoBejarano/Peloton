if(distance_to_object(target) <  32) {
   picker = obj_pl01.picker;
   picker.name = "Rifle Ammo"
   picker.quantity = quantity;
   picker.subimage = 4;
   picker.alarm[0] = 1;
   audio_play_sound(snd_dp_bullet, 0, false);
}

