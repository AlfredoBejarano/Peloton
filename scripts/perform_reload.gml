/// perform_reload(reload button pressed, shoot button pressed)
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
        } else {
            alarm[3] = reload_speed / weapon.max_ammo;
        }
    }   
} else {
    exit;
}
