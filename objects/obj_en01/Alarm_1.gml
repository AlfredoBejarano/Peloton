if(death_position >= 60) {
    with(hand1) { instance_destroy(); }
    with(hand2) { instance_destroy(); }    
    instance_destroy();
} else {
   alarm[1] = 1;
   red_alpha -= 1/60;
   death_position += 3;
   if(death_position <= 15) {
      hand1y += 8;
   } else if(death_position <= 50) {
     hand2y += 4;
   }
   create_blood_splat(random_range(x-128, x+128), random_range(y-256, y), self, false, depth - 5);   
}

