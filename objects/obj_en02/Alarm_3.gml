if(is_hitting) {
    alarm[10] = 15;
    exit;
} else {
   if(attack_position <= 0) {
      alarm[4] = 15;
      is_attacking = 0;
      cpcs = true;
   } else {
      handx --;
      hand2x -= 7;
      attack_position --;   
      alarm[3] = 1;
      hand1y --;
      hand2y -= 7;     
      wepx--;
      wepy -= 7; 
      hand1.image_angle += 6*hand1.image_xscale;
      hand2.image_angle += 6*hand2.image_xscale;         
      weapon.image_angle += 6*weapon.image_xscale;       
   }
}

