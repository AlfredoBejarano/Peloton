if(has_magazine) {
    ammo_nedeed = max_ammo - ammo;

    if(shooter.current_ammo >= ammo_nedeed) {
        ammo = max_ammo;
        shooter.current_ammo = shooter.current_ammo - ammo_nedeed;
        ds_list_replace(shooter.ammo_inventory, ammo_type, shooter.current_ammo); 
    } else {
        ammo = ammo + shooter.current_ammo;
        shooter.current_ammo = 0;
        ds_list_replace(shooter.ammo_inventory, ammo_type, shooter.current_ammo);        
    }
} else {
    if(shooter.current_ammo > 0) {
        ammo ++;
        shooter.current_ammo --;
        ds_list_replace(shooter.ammo_inventory, ammo_type, shooter.current_ammo);    
    }
}

