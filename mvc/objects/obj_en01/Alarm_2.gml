if(attack_position >= 15) {
   alarm[3] = 1;
} else {
   handx +=5;
   attack_position ++;   
   alarm[2] = 1;
   hand1y += 2;
   hand2y += 2;   
   hand1.image_angle -= 6*hand1.image_xscale;
   hand2.image_angle -= 6*hand2.image_xscale;      
}

