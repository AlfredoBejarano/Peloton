if(zombie != noone) {
   image_speed = 0;
   image_index = zombie.image_index;
    is_attacking = zombie.is_attacking;
    if(position == 0) {
        depth = zombie.depth + 1;
        sync_to_object(zombie, (128 + zombie.handx) * image_xscale, -96+zombie.hand2y, true, false, false);     
    } else {
        depth = zombie.depth - 1;    
        sync_to_object(zombie, (64 + zombie.handx) * image_xscale,  -64+zombie.hand1y, true, false, false);            
    }
}

