///create_hitscan(x, y, distance, hitscan y, emitter object, y delta)
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
ixs = image_xscale;
distance = argument2;
dir = argument4.direction;

// calculate distance relative to the player

if(argument4.object_index != obj_wep03 && argument4.object_index != obj_wep07) { create_muzzle_flash(x1, y1, argument4); }
while(x2 != distance) {
    target = collision_line(x1, y1, x1 + (distance*image_xscale), y1 + argument3, obj_target_parent, true, true);
    
    if(argument4.object_index == obj_wep04 || argument4.object_index == obj_wep08) {
        shot = instance_create(x1, y1, obj_shot);
        if(target) {
           shot.target = target;
           with(shot) {
              x2 = target.x;
              alarm[1] = 1;
           }       
        } else {
           with(shot) {
              image_alpha = 0.5;
              x2 = argument0 + (argument2*argument4.image_xscale);
              alarm[1] = 1;
           }
        }    
    }    
    
    if(target && target.can_get_hit == 1) {        
        switch(target.object_index) {
            case obj_barrel:                
                create_bullet_sparkle(target.x, argument1 + argument5, argument4, target.depth -1);
            break;
            
            case obj_en01:                
                create_blood_splat(target.x, argument1 + argument5, argument4, false, target.depth - 1);
            break;
        }
        
        if(target.hp != noone) {
            target.hp -= argument4.damage;
            target.damage = damage;
        }
        
        x2 = distance;
    } else {
        x2 = distance;
    }
}
