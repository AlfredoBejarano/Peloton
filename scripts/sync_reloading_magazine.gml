/** Syncs a new magazine with the reloading hand. **/
// argument0 - Reloading hand

with(instance_create(x, y, obj_magazine)) {
    follow_hand = argument0;
    weapon_belongs_to = follow_hand.player.weapon;
    alarm[1] = follow_hand.player.weapon.reload_speed - ((follow_hand.player.weapon.reload_speed) / 4);
    mag_type = follow_hand.player.weapon.ammo_type;
        
    sprite_index = follow_hand.player.weapon.sprite_index;        
    if(mag_type > 1) {
        image_index = 2;
    }
} 
