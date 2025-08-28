if(!audio_is_playing(intro)) {
    if(!audio_is_playing(loop)) {
        audio_play_sound(loop, 1, true);
    }
}

