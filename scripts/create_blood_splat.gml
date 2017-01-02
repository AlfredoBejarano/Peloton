///create_blood_splat(x, y, hitscan_emitter, is_knife, depth)
sound = choose(snd_en_hit01, snd_en_hit02, snd_en_hit03);
if(argument3 == true) {
   audio_play_sound(snd_wep00_cut, 0, false);
} else {
   if((!audio_is_playing(sound))) {
      audio_play_sound(sound, 0, false);
   }
}

with(instance_create(argument0, argument1, obj_fx_blood)) {
  image_xscale = (argument2.image_xscale) * -1;
  depth = argument4;
  image_yscale = choose(-1, 1);
}
