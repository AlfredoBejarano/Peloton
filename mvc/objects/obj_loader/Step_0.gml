bgmp = audio_group_load_progress(audiogroup_music);
sfxp = audio_group_load_progress(audiogroup_weapons);
cfxp = audio_group_load_progress(audiogroup_characters);
efxp = audio_group_load_progress(audiogroup_enemy);

if(audio_group_is_loaded(audiogroup_music) && audio_group_is_loaded(audiogroup_weapons) && audio_group_is_loaded(audiogroup_characters) && audio_group_is_loaded(audiogroup_enemy)) {
    room_goto_next();
}

