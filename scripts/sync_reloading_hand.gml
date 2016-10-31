// argument0 - Player object

if(argument0.is_switching == 1) { exit; }
if(argument0.weapon != obj_wep00) { image_alpha = 1; }
switch(argument0.weapon) {
    case obj_wep01:
        switch(reloading_position) {
            case 1: { sync_to_object(argument0.weapon, (-48 * image_xscale), 48, true, false, true); break; }
            case 2: { sync_to_object(argument0.weapon, (-24 * image_xscale), 48, true, false, true); break; }
            case 3: { sync_to_object(argument0.weapon, (-12 * image_xscale), 48, true, false, true); break; }
            default: { sync_to_object(argument0.weapon, (-4 * image_xscale), 4, true, false, true); break;}                        
        }
    break;
    
    case obj_wep02:
        switch(reloading_position) {
            case 1: { sync_to_object(argument0.weapon, (-48 * image_xscale), 48, true, false, true); break; }
            case 2: { sync_to_object(argument0.weapon, (-24 * image_xscale), 48, true, false, true); break; }
            case 3: { sync_to_object(argument0.weapon, (-12 * image_xscale), 48, true, false, true); break; }
            default: { sync_to_object(argument0.weapon, (70 * image_xscale), 16, true, false, true); break;}                        
        }
        if(argument0.is_aiming == 1 && argument0.is_reloading == 0) {
            sync_to_object(argument0.weapon, (70 * image_xscale), -4, true, false, true);
        }
    break;

    case obj_wep03:
        switch(reloading_position) {
            case 1: { sync_to_object(argument0.weapon,  (24 * image_xscale),  16, true, false, true);  break; }
            case 2: { sync_to_object(argument0.weapon,  (56  * image_xscale), -24, true, false, true);  break; }
            case 3: { sync_to_object(argument0.weapon,  (112 * image_xscale), -24, true, false, true); break;}                 
            default: { sync_to_object(argument0.weapon, (138 * image_xscale), -32, true, false, true); break;}                        
        }
        if(argument0.is_reloading == 0) {
            if(argument0.weapon.pump == 1) {
                sync_to_object(argument0.weapon, (120 * image_xscale), 4, true, false, true);    
            } else {
                if(argument0.weapon.recoil == 1) {
                    sync_to_object(argument0.weapon, (96 * image_xscale), -96, true, false, true);
                } else if(argument0.is_aiming == 0) {
                    sync_to_object(argument0.weapon, (138 * image_xscale), 26, true, false, true);
                } else if(argument0.is_aiming == 1) {
                    sync_to_object(argument0.weapon, (140* image_xscale), 4, true, false, true);
                }
            }
        }
    break; 
    
    default:
        image_alpha = 0;
    break;      
}
