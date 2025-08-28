pump = 1;
audio_play_sound(snd_wep_pump01,1,false);
if(shooter.is_reloading == 0) { 
    create_dropable_fx(x+(56*image_xscale),y-24, obj_shell, true, 10, 15, false, sprite_index, self); 
}


