///create_enemy_wave(wave number)
/// automatically generates enemies
repeat(argument0) {
   audio_play_sound(snd_en_appear, 0, false);
   zombie = instance_create(choose(-128, room_width + 128), 900, obj_en01)
   with(zombie) {
      can_move =1 ;
   }
}
