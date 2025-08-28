depth = player.depth - 3;
sync_reloading_hand(player);
if(player.is_switching == 1 || player.weapon == obj_wep00 || player.is_taking_damage == 1) {image_alpha = 0;} else {image_alpha = 1;}

