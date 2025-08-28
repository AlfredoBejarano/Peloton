/** Adds correct variables for hand2's animations **/

// argument0 - PLayers object.

player = argument0;

sprite_index = ds_list_find_value(player_skin_factory(player.character), 2);

reloading_position = 0;

if(player.weapon.has_magazine) {
    time = player.weapon.reload_speed / 4;
} else {
    time = (player.weapon.reload_speed / player.weapon.max_ammo) / 2;
}
