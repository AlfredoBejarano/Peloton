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
with(argument4) {
   // calculate distance relative to the player
   
   if(argument4.object_index != obj_wep03 && argument4.object_index != obj_wep07) { 
    with(create_muzzle_flash(x1, y1, argument4)) {
        image_xscale = argument4.image_xscale;
    }         
   }
   while(x2 != distance) {
      target = collision_line(x1, y1, x1 + (distance*image_xscale), y1 + argument3, obj_target_parent, true, true);
      shot = instance_create(x1, y1, obj_shot);
      if(target) {
         shot.target = target;
         with(shot) {
            x1 = argument0;
            y1 = argument1;
            x2 = target.x;
            y2 = argument1 + argument5;
            alarm[1] = 1;
         } 
         if(target.is_enemy) {
            if(target.can_get_hit == 1) {
               target.can_move = 1;
               create_blood_splat(target.x, argument1 + argument5, argument4, false, target.depth - 1);
               if(target.hp != noone) {                                 
                  if((argument4.stopping_power / 100) == 1) {
                    stopping_power = true;
                  } else {
                    stopping_power = false;
                  }
                  var mult = 1;
                  if((argument4.critical / 100) == 1) {
                    mult = 2;
                    instance_create(target.x, argument1 + argument5, obj_fx_critical);
                  }
                  
                  if(stopping_power) {
                     with(target) {
                        take_damage(image_xscale * -1, argument4.damage * mult, dam_sound);
                     }
                  } else {
                     target.hp -= argument4.damage * mult;
                  }
               }
            }
         } else {
             target.hp -= argument4.damage;
            create_bullet_sparkle(target.x, argument1 + argument5, argument4, target.depth -1);
         }
         x2 = target.x;
         break;         
      } else {
         with(shot) {
            image_alpha = 0.5;
            x1 = argument0;
            y1 = argument1;  
            x2 = argument0 + (argument2*argument4.image_xscale);
            y2 = argument1 + argument5;  
            alarm[1] = 1;           
         }
         x2 = distance;
      }  
   }
}
