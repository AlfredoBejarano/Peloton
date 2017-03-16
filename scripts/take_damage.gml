/// take_damage(damage_direction, damage_amount, damage sound);
if(can_take_damage == 0) { 
   if(!is_enemy) { exit; }
} else {
    is_taking_damage = 1;
    if((hp <= 50) && !is_enemy) {
        eye_index = 1;
        mouth_index = 1;
        
        if(cplhps == 1) {
            audio_play_sound(snd_char01_critical_hp, 1, false);
            cplhps = 0;
        }    
    }
    if(argument0 == image_xscale) {
        damage_direction = 1;
    } else {
        damage_direction = 0;
    }    
    hp -= argument1;
    hspeed = 30*argument0;
    image_angle = 15*argument0;
    if(is_enemy) {
      alarm[5] = 5;
    } else {
      eye_index = 2;
      alarm[3] = 15;    
    }
    
    if(is_enemy) {
      if(!audio_is_playing(argument2)) {
         audio_play_sound(argument2, 0, false);
      }
    } else {
      if(hp > 25) {
         sound = ds_list_find_value(argument2, irandom(4));
         audio_play_sound(sound, 0, false);         
      }
    }
    can_take_damage = 0;
}
