/// take_damage(damage_direction, damage_amount, damage sound);
if(can_take_damage == 0) { 
   if(!is_enemy) { 
    exit; 
   }
} else {
    is_taking_damage = 1;
    if(argument[0] == image_xscale) {
        damage_direction = 1;
    } else {
        damage_direction = 0;
    }    
    hp -= argument[1];
    hspeed = 30*argument[0];
    image_angle = 15*argument[0];
    if(is_enemy) {
        eye_index = 1;
        alarm[5] = 5;
    } else {
      eye_index = 2;
      alarm[3] = 15;    
    }
    
    if(is_enemy) {
        if(!audio_is_playing(argument[2])) {
            audio_play_sound(argument[2], 0, false);
        }
    } else {
        if((hp - argument[1]) <= 0) {
            is_dying = true;
            alarm[8] = 60;
            audio_play_sound(ds_list_find_value(sounds, 7), 0, false); 
        } else if(hp  <= 50) {
            eye_index = 1;
            mouth_index = 1;
            if(cplhps == 1) {
                audio_play_sound(ds_list_find_value(sounds, 5), 0, false); 
                cplhps = 0;
            }    
        } else {
            sound = ds_list_find_value(sounds, irandom(4));
            audio_play_sound(sound, 0, false);         
        }
    }
    can_take_damage = 0;
}
