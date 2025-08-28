if(ammo != max_ammo) {
    calculate_ammo();
    alarm[3] = (reload_speed / max_ammo) / 2;
}

