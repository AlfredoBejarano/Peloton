///create_enemy_wave(wave number)
/// automatically generates enemies
audio_play_sound(snd_en_appear, 0, false);   
xc = 0;
yc = 900;
for(i = 0; i <= argument0; i++) {   
   /*if(i % 2 == 0) { xc = 0; } else { xc = room_width; }  
   if(!place_free(xc, yc)) {
      yc += 64;
   }
   
   zombie = instance_create(xc, yc, obj_en01)
   with(zombie) { can_move =1 ; } */
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
