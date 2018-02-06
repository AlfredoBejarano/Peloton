/// perform_reload(reload button pressed, shoot button pressed)
var reload_hand = hand2;
var is_ammo_available = current_ammo > 0;
var weapon_is_not_full = weapon.ammo < weapon.max_ammo;
var weapon_empty = is_aiming == 1 && argument[1] && weapon.ammo == 0;
if((argument[0] || weapon_empty) && is_ammo_available && weapon_is_not_full && is_reloading == 0) {
    is_reloading = 1; // Set the reload flag.
    alarm[1] = weapon.reload_speed;
    with(weapon) {
        alarm[2] = reload_speed;
        if(has_magazine) {
            alarm[1] = 1;
            reload_hand.alarm[0] = (reload_speed / 4);
        } else {
            reload_hand.alarm[0] = reload_hand.time / 2;
            alarm[3] = reload_hand.time;
        }
    }   
} else {
    exit;
}
