if(distance_to_object(target) <  32) {
   picker = obj_pl01.picker;
   picker.name = "Bandage"
   picker.quantity = quantity;
   picker.subimage = 0;
   picker.alarm[0] = 1;
   audio_play_sound(snd_dp_heal, 0, false);
}

