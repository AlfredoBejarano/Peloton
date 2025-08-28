if(position == fire_speed) {
    position = fire_speed;
    alarm[1] = fire_speed;
    shooter.can_knife = false;
    audio_play_sound(firing_sound, 0, false);
} else {
    position ++;
    alarm[0] = 1;
    shooter.is_aiming = 1;
    shooter.can_knife = false;
}    

