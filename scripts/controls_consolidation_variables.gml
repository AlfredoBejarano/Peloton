// argument0 - Reload key (pressed).
// argument1 - Aim key (check).
// argument2 - Shoot key (pressed).

knife_restrict = false;
ammo_available = false;
reload_condition1 = false;
reload_condition2 = false;
reload_condition3 = false;
not_shooting_knife = false;
empty_ammo_and_aiming = false;
not_reloading_shooting_knife = false;
not_shooting_reloading_but_aiming = false;
not_aiming_reloading_shooting_knife = false;
if(weapon.ammo < weapon.max_ammo && current_ammo > 0) {
    ammo_available = true;
} else {
    ammo_available = false;
}

if(is_shooting == 1 || is_reloading == 1 || is_switching == 1) { 
    knife_restrict = true; 
} else { 
    knife_restrict = false; 
}

if(ammo_available && is_reloading == 0) { 
    reload_condition1 = true; 
} else { 
    reload_condition1 = false; 
}

if(argument0 && is_shooting == 0 && is_switching == 0) { 
    reload_condition2 = true; 
} else { 
    reload_condition2 = false; 
}

if(weapon.ammo == 0 && argument1 && argument2) { 
    reload_condition3 = true; 
} else { 
    reload_condition3 = false; 
}

if(is_shooting == 0 && weapon != obj_wep00) { 
    not_shooting_knife = true; 
} else { 
    not_shooting_knife = false; 
}

if(is_aiming == 0 && is_reloading == 0 && not_shooting_knife) { 
    not_aiming_reloading_shooting_knife = true; 
} else { 
    not_aiming_reloading_shooting_knife = false; 
}

if(is_reloading == 0 && not_shooting_knife) {
    not_reloading_shooting_knife = true;
} else {
    not_reloading_shooting_knife = false;
}

if(is_shooting == 0 && is_reloading == 0 && is_aiming == 1) { 
    not_shooting_reloading_but_aiming = true; 
} else { 
    not_shooting_reloading_but_aiming = false; 
}

if(is_aiming == 1 && weapon.ammo == 0 && current_ammo <= 0) {
    empty_ammo_and_aiming = true;
} else {
    empty_ammo_and_aiming = false;
}
