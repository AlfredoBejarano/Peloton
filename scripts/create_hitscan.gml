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
wep = argument4
wp = instance_find(argument4.shooter.weapon, argument4.shooter.weapon_id);
with(wp) {
// calculate distance relative to the player

if(wep.object_index != obj_wep03 && wep.object_index != obj_wep07) { 
   with(create_muzzle_flash(x1, y1, wep)) {
      image_xscale = wep.image_xscale;
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
   } else {
      with(shot) {
         image_alpha = 0.5;
         x1 = argument0;
         y1 = argument1;              
         x2 = argument0 + (argument2*argument4.image_xscale);
         y2 = argument1 + argument5;              
         alarm[1] = 1;
      }
   }     
    
    if(target && target.can_get_hit == 1) {        
        switch(target.object_index) {
            case obj_barrel:                
                create_bullet_sparkle(target.x, argument1 + argument5, wep, target.depth -1);
            break;
            
            case obj_en01:
               target.can_move = 1;                  
               create_blood_splat(target.x, argument1 + argument5, wep, false, target.depth - 1);
            break;
        }
        
        if(target.hp != noone) {
            target.hp -= wep.damage;
        }
        
        x2 = distance;
    } else {
        x2 = distance;
    }
}}
