/// This script muts be called when there is a collition with a Zombie Chainsaw
if(cpcs == 0) { 
   exit;
} else {
   inrange = false;
   if(((y <= other.shooter.y + 32) && (y >= other.shooter.y - 32)) || y == other.shooter.y) {
      inrange = true;
      other.is_hitting = 1;
   }
   
   if(other.shooter.is_attacking == 1 && inrange && can_take_damage == 1) {
      instance_create(-64, -64, obj_fx_low_health);
      hp = 0;
      cpcs = 0;      
      cplhps = 0;
      eye_index = 2;
      alarm[7] = 180;
      is_taking_damage = 1;
      can_take_damage = 1;   
      other.shooter.is_hitting = 1;
      tix = other.shooter.image_xscale;
      image_xscale = -1*tix;
      x = other.x + (256 * other.image_xscale)
      audio_play_sound(ds_list_find_value(sounds, 6), 0, false);    
      chainsaw_dead_animation(); 
    }
}
