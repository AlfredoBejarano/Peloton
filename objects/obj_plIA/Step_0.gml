depth = -y;
current_ammo = 999;
wep = instance_find(weapon, weapon_id);
target = instance_nearest(x, y, obj_target_parent);

if(is_aiming == 1) { 
   spd = 2; 
   can_face = 0;
} else {
   spd = 4;
   can_face = 1;
} 

if(distance_to_object(obj_pl01) > 512 && can_move == 1) {
   mp_potential_step(obj_pl01.x, obj_pl01.y, spd, false);   
}

if(can_face == 1) {
   if(x > obj_pl01.x) { 
      image_xscale = -1; 
   } else { 
      image_xscale = 1; 
   }
} else {
   if(x > target.x) { 
      image_xscale = -1; 
   } else { 
      image_xscale = 1; 
   }
}

if(distance_to_object(target) < 256) {
   is_aiming = 1;
   if(is_shooting == 0) {
      if(wep.ammo > 0) {
         perform_shoot(obj_plIA);
      } else {
         if(is_reloading == 0) {
            perform_ia_reload(obj_plIA);            
         }
      }
   }
   if(y < target.y) {
      y += spd;
   } else if(y > target.y) {
      y -= spd;
   }
   
   if(x > target.x) { 
      x += spd
   } else {
      x -= spd;
   } 
} else {
   is_aiming = 0;
}

