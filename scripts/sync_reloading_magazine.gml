/** Syncs a new magazine with the reloading hand. **/
// argument0 - Reloading hand

with(instance_create(x, y, obj_magazine)) {
    follow_hand = argument0;
    weapon_belongs_to = follow_hand.player.weapon;
        alarm[1] = follow_hand.player.weapon.reload_speed - ((follow_hand.player.weapon.reload_speed) / 4);
        switch(follow_hand.player.weapon) {
            case obj_wep01:
                sprite_index = spr_wep01;
            break;
            
            case obj_wep02:
                sprite_index = spr_wep02;
            break;
            
            case obj_wep03:
                sprite_index = spr_wep03;
                image_index = 2;
            break;
            
            case obj_wep04:
                sprite_index = spr_wep04;
                image_index = 2;
            break;
        }
    } 
