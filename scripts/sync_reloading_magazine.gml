/** Syncs a new magazine with the reloading hand. **/
// argument0 - Reloading hand

with(instance_create(x, y, obj_magazine)) {
    follow_hand = instance_find(obj_hand2, argument0.player.hand2id);
    weapon_belongs_to = follow_hand.wep;
    alarm[1] = weapon_belongs_to.reload_speed - ((weapon_belongs_to.reload_speed) / 4);
    mag_type = weapon_belongs_to.ammo_type;
        
    sprite_index = weapon_belongs_to.sprite_index;        
    if(mag_type > 2) {
        image_index = 2;
    }
} 
