if(!instance_exists(follow_hand)) {
    instance_destroy();
} else {
    if(follow_hand != false) {
        if(weapon_belongs_to == obj_wep02 || weapon_belongs_to == obj_wep04 || weapon_belongs_to == obj_wep06 || weapon_belongs_to == obj_wep08) {
            x = follow_hand.x - (48 * image_xscale);
        } else {
            x = follow_hand.x;
        }
        y = follow_hand.y-16;  
        image_xscale = follow_hand.image_xscale;
    }
}

