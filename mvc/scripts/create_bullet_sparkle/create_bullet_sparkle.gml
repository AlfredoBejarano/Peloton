// creates a bullet sparkle when a hitscan hits a wall
// create_bullet_sparkle(x, y, hitscan emitter obj, depth);
sound = choose(snd_metal_bullet_1, snd_metal_bullet_2);
if(!audio_is_playing(sound)){audio_play_sound(sound, 0, false);}
with(instance_create(argument0, argument1, obj_fx_bullet)){ 
    image_xscale = argument2.image_xscale*-1; 
    image_yscale = choose(1, -1);
    depth = argument3
}
