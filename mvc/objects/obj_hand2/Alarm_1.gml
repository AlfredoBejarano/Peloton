if(wep.has_magazine == 1) {
    reloading_position = 2;
    alarm[2] = wep.reload_speed / 4;
} else {
    if(wep.ammo < wep.max_ammo && player.current_ammo > 0) {
            alarm[0] = time/2;
            reloading_position = 2;
            audio_play_sound(wep.reload_sound,1,false);
    } else {
        reloading_position = 0;
        alarm[2] = wep.reload_speed / 4;         
    }
}

