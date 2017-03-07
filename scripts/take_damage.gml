/// take_damage(damage_direction, damage_amount);
if(can_take_damage == 0) { 
   if(!is_enemy) { exit; }
} else {
    is_taking_damage = 1;
    if((hp <= 50) && !is_enemy) {
        eye_index = 1;
        mouth_index = 1;
        
        if(cplhps = 1) {
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
    if(!(hp <= 25 && cplhps = 1) && !audio_is_playing(snd_char01_critical_hp) && !is_enemy) {
        sound = choose(snd_char01_dam01, snd_char01_dam02,snd_char01_dam03, snd_char01_dam04, snd_char01_dam05);
        audio_play_sound(sound,1,false);    
    }
    can_take_damage = 0;
}
