obj_am_lighting.dark_factor = 0.8; 
if(global.gamemode == gm_campaign) {
    instance_create(3721, 1020, obj_pl01);
} else {
    instance_create(2149, 1020, obj_pl01);
    if(global.gamemode == gm_siege_mode) {
        wep = ds_list_find_value(global.pl01wi, 0);
        set_item_picker_data(ds_list_find_value(get_weapon_data(wep), 0), real(real(ds_map_find_value(global.upgrades, ds_list_find_value(siege_keys_factory(wep), 2))) * 4), ds_list_find_value(get_weapon_data(wep), 2), snd_weapon_add);
        instance_create(0, 0, obj_enemy_generator);
    }
}