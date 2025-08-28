// Getting ammo from player's object inventory
shooter = noone;
if(shooter != noone) {
	ammo = ds_list_find_value(shooter.weapons_ammo, shooter.current_weapon);
}