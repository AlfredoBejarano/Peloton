var audio = false;
object = !position_empty(x + (128 * image_xscale), y);

if(object != noone) {
    instance_destroy();
    if(object.object_index == obj_dummy_target) {
        audio = choose(snd_metal_bullet_1, snd_metal_bullet_2);
    }
}

return audio;
