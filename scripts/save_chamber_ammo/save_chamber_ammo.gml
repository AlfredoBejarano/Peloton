/// @description save_chamber_ammo(player, gun object)
/// @param player
/// @param  gun object
function save_chamber_ammo(argument0) {
	// argument0 - player object 
	wep = argument0.weapon;
	

	if(wep.object_index != obj_wep00) {
		ds_list_replace(argument0.weapons_ammo, argument0.current_weapon, argument0.weapon.ammo); 
	}

	instance_destroy(wep);
}
