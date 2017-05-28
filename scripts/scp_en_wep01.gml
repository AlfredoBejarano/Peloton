///scp_en_wep01(zombie object)
hand1 = argument[0].hand1;
hand2 = argument[0].hand2;
image_xscale = argument[0].image_xscale;

if(argument[0].chainsaw_raised == true && argument[0].is_hitting == 0) {
   image_angle = 90 * image_xscale;
   sync_to_object(shooter, 128 * image_xscale, -64, true, true, false);
   with(hand1) {sync_to_object(zombie.weapon, 0, 0, true, false, true);}
   with(hand2) {
      image_angle = 270;
      sync_to_object(zombie.weapon, -64*zombie.image_xscale, -80, true, false, false);   
   }      
} else if(argument[0].chainsaw_raised == false && argument[0].is_attacking == 1 && argument[0].is_hitting == 0){
   sync_to_object(shooter, (160 + argument[0].wepx) * image_xscale, -128 + shooter.wepy, true, true, false);
   with(hand1) {sync_to_object(zombie.weapon, zombie.hand1x * argument[0].image_xscale, zombie.hand1y, true, false, true);}
   with(hand2) {
      image_angle = 270 * zombie.image_xscale;
      sync_to_object(zombie.weapon, (-64 + zombie.hand2x)*zombie.image_xscale, -80 + zombie.hand2y, true, false, false);   
   }      
} else if(argument[0].is_hitting == 1){
    image_angle = 25 * image_xscale;
    sync_to_object(shooter, 128 * image_xscale, -64, true, true, false);
    with(hand1) {
        sync_to_object(zombie.weapon, 0, 0, true, false, true);
    }
    with(hand2) {
        image_angle = 160;
        sync_to_object(zombie.weapon, 56 * zombie.image_xscale, -104, true, false, false);   
    }        
} else {
   image_angle = 345 * image_xscale;
   sync_to_object(shooter, 48 * image_xscale, -64, true, true, false);
   with(hand1) {sync_to_object(zombie.weapon, 0, 0, true, false, true);}
   with(hand2) {
      image_angle = 180;
      if(zombie.is_chaining == true) {
         sync_to_object(zombie.weapon, 80 * zombie.image_xscale, -8 + zombie.hand2y, true, false, false);
      } else {
         sync_to_object(zombie.weapon, 112*zombie.image_xscale, -48, true, false, false);   
      }
   }   
}
