if(chains <=0) {
   weapon.image_speed = 1;
   is_chaining = false;
   audio_play_sound(snd_wep09_aim, 0, true);
   can_move = 1; 
   can_attack = 1;   
   exit;
} else {
   if(hand2y < - 48) {
      alarm[8] = 1;
   } else {
      if(!can_chain) { 
         can_chain = true; 
         chains --;
      }
      hand2y -= 6;
      alarm[7] = 1;
   }
}

