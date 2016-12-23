/// pick_droppable()
if(other.item_type == "ammo") {
    // Calculates the new ammo value for replacing it in the inventory
    new_ammo = ds_list_find_value(ammo_inventory, other.ammo_type) + other.quantity;    
    ds_list_replace(ammo_inventory, other.ammo_type, new_ammo);
    
    // If the ammo picked is the same type as current weapon ammo type
    if(weapon.ammo_type == other.ammo_type){
        current_ammo = ds_list_find_value(ammo_inventory, other.ammo_type);
    }
    
    // Destroy the pickable item
    with(other) { instance_destroy(); }
}
