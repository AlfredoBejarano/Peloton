if(is_hitting) {
    exit;     
} else {
   if(attack_position >= 15) {
      alarm[3] = 1;
   } else {
      if(cpcs) {
         audio_stop_sound(weapon.aim_sound);
         audio_play_sound(weapon.firing_sound, 0, false);    
         cpcs = false;
      }
      chainsaw_raised = false;
      handx ++;
      hand2x += 7;
      attack_position ++;   
      alarm[9] = 1;
      hand1y ++;
      hand2y += 7;   
      wepx ++;
      wepy += 7;
      hand1.image_angle -= 6*hand1.image_xscale;
      hand2.image_angle -= 6 * image_xscale;
      weapon.image_angle -= 6*weapon.image_xscale;  
   }
}

