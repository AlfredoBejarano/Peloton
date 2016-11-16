// creates blood splat
// create_bullet_sparkle(x, y, hitscan emitter obj, depth, is_knife, other);

sound = choose(snd_en_hit01, snd_en_hit02, snd_en_hit03);                
if(argument4) {
    audio_play_sound(snd_wep00_cut, 0, false);
} else {
    if(!audio_is_playing(sound)){
        audio_play_sound(sound, 0, false);
    }
}
with(instance_create(argument0, argument1, obj_fx_blood)){ 
    image_xscale = argument2.image_xscale*-1; 
    depth = argument3
    image_yscale = choose(-1, 1);
}

instance_create(argument0, argument5.y, obj_blood_floor);
