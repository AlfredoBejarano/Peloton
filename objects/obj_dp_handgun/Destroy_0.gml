if(distance_to_object(target) <  32) {
   picker = obj_pl01.picker;
   picker.name = "Handgun Ammo"
   picker.quantity = quantity;
   picker.subimage = 1;
   picker.alarm[0] = 1;
   alarm[3] = room_speed * 5;
   audio_play_sound(snd_dp_bullet, 0, false);
}

