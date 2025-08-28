hand1 = create_zombie_hand(self, 256, 256, 0, obj_en02_hand01);
hand2 = create_zombie_hand(self, 256, 256, 1, obj_en02_hand02);
init_enemy(hand1, hand2, 600, obj_en02, 200);
hand1x = 0;
hand2x = 0;
eye_index = 0;
chains = 2;
chainsaw_raised = false;
can_chain = true;
is_chaining = true;
is_hitting = 0;
alarm[7] = 1;
cpcs = true;
wepx = 0;
wepy = 0;
audio_play_sound(snd_wep09_reload, 0, false);

