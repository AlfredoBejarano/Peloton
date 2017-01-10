///sync_reloading_hand(Player object)
// argument0 - Player object

hy = 0;
wep = player.weapon;
if(wep == obj_wep00 || argument0.is_taking_damage == 1) {
    image_alpha = 0;
    sync_to_object(wep, (-48 * image_xscale), 48, true, false, true);        
} else if(wep == obj_wep01) {
    switch(reloading_position) {
        case 1: { sync_to_object(wep, (-48 * image_xscale), 48, true, false, true); break; }
        case 2: { sync_to_object(wep, (-24 * image_xscale), 48, true, false, true); break; }
        case 3: { sync_to_object(wep, (-12 * image_xscale), 48, true, false, true); break; }
        default: { sync_to_object(wep, (-4 * image_xscale), 4, true, false, true); break;}                        
    }
} else if(wep == obj_wep02){
    if(argument0.is_aiming == 1 && argument0.is_reloading == 0) { hy = -4 } else { hy = 16}   
    switch(reloading_position) {
        case 1: { sync_to_object(wep, (-48 * image_xscale), 48, true, false, true); break; }
        case 2: { sync_to_object(wep, (-24 * image_xscale), 48, true, false, true); break; }
        case 3: { sync_to_object(wep, (-12 * image_xscale), 48, true, false, true); break; }
        default: { sync_to_object(wep, (70 * image_xscale), hy, true, false, true); break;}                        
    }
} else if(wep == obj_wep03 || wep == obj_wep07) {
    switch(reloading_position) {
        case 1: { sync_to_object(wep,  (56 * image_xscale),  -8, true, false, true);  break; }
        case 2: { sync_to_object(wep,  (24 * image_xscale),  16, true, false, true);  break; }
        case 3: { sync_to_object(wep,  (112 * image_xscale),  -24, true, false, true); break;}                 
        default: { sync_to_object(wep, (138 * image_xscale), -32, true, false, true); break;}                        
    }
    if(argument0.is_reloading == 0) {
        if(wep.pump == 1) {
            sync_to_object(wep, (120 * image_xscale), 4, true, false, true);    
        } else {
            if(wep.recoil == 1) {
                sync_to_object(wep, (96 * image_xscale), -96, true, false, true);
            } else if(argument0.is_aiming == 0) {
                sync_to_object(wep, (138 * image_xscale), -24, true, false, true);
            } else if(argument0.is_aiming == 1) {
                    sync_to_object(wep, (140* image_xscale), 4, true, false, true);
            }
        }
    }
} else if(wep == obj_wep04 || wep == obj_wep08) {
    switch(reloading_position) {
        case 1: { sync_to_object(wep, (-48 * image_xscale), 48, true, false, true); break; }
        case 2: { sync_to_object(wep, (-24 * image_xscale), 48, true, false, true); break; }
        case 3: { sync_to_object(wep, (32 * image_xscale), 12, true, false, true); break; }
        default: { sync_to_object(wep, (78 * image_xscale), 8, true, false, true); break;}                        
    }
    if(argument0.is_aiming == 1 && argument0.is_reloading == 0) {
        sync_to_object(wep, (96 * image_xscale), -12 * image_yscale, true, false, true);
    }
} else if(wep == obj_wep05) {
    switch(reloading_position) {
        case 1: { sync_to_object(wep, (-48 * image_xscale), 48, true, false, true); break; }
        case 2: { sync_to_object(wep, (-24 * image_xscale), 48, true, false, true); break; }
        case 3: { sync_to_object(wep, (-12 * image_xscale), 48, true, false, true); break; }
        default: { sync_to_object(wep, (-4 * image_xscale), 12, true, false, true); break;}                        
    }
    if(wep.recoil == true) { sync_to_object(wep, (8 * image_xscale), 12, true, false, true); }
} else if(wep == obj_wep06){
    if(argument0.is_aiming == 1 && argument0.is_reloading == 0) { hy = -12 } else { hy = 16}    
    switch(reloading_position) {
        case 1: { sync_to_object(wep, (-48 * image_xscale), 48, true, false, true); break; }
        case 2: { sync_to_object(wep, (-24 * image_xscale), 48, true, false, true); break; }
        case 3: { sync_to_object(wep, (-12 * image_xscale), 48, true, false, true); break; }
        default: { sync_to_object(wep, (116 * image_xscale), hy, true, false, true); break;}                        
    }
} else {
    image_alpha = 0;
}
