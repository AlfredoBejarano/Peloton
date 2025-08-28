if(curr_time <= 0) {
    wave ++
    create_enemy_wave(wave);
    reset = true;
} else {
    curr_time --
    alarm[0] = room_speed
    audio_play_sound(snd_time_tick, 0, false);
}

