///create_enemy_wave(wave number)
/// automatically generates enemies
audio_play_sound(snd_en_appear, 0, false);   
xc = 0;
yc = 900;
for(i = 1; i <= argument0; i++) {   
   xc = irandom(room_width);
   yc = irandom_range(900, room_height);
   if(!place_free(xc, yc)) {
      xc = irandom(room_width);
      yc = irandom_range(900, room_height);
   }
   
   zombie = instance_create(xc, yc, obj_en01);
   instance_create(xc, yc-64, obj_fx_enemy_spawn);
   with(zombie) {
      can_attack = 0;
      alarm[4] = 60;
   }
}
