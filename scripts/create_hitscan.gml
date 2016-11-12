/*
* This script allows the creation of a hitscan.
*/

// argument0 - x coordenate creation of the hitscan.
// argument1 - y coordenate creation of the hitscan.
// argument2 - distance of the hitscan
// argument3 - y of the hitscan. (for shotguns)
// argument4 - emitter object.
// argument5 - dy for fx create.

distance = argument0;

x2 = 0;
x1 = argument0;
y1 = argument1;
distance = argument2;
dir = argument4.direction;

// calculate distance relative to the player

while(x2 != distance) {
    target = collision_line(x1, y1, x1 + (distance*image_xscale), y1 + argument3, obj_dummy_target, true, true);
    
    if(target) {        
        switch(target.object_index) {
            case obj_dummy_target:
                sound = choose(snd_metal_bullet_1, snd_metal_bullet_2);
                if(!audio_is_playing(sound)){audio_play_sound(sound, 0, false);}
                create_bullet_sparkle(target.x, argument1 + argument5, argument4, target.depth -1);
            break;
        }
        x2 = distance;
    } else {
        x2 = distance;
    }
}
