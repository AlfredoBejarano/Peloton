depth = shooter.depth - 1;
scp_en_wep01(shooter);
if(is_hitting == 1 && cphs == 1) {
   audio_play_sound(snd_wep09_empty, 0, false);
   cphs = 0;
   shooter.chainsaw_raised = true;
   shooter.alarm[10] = 180;
}

