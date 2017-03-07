///siege_weapon_upgrade(weapon, upgrade quantity, upgrade type)
upgrade_texts = ds_list_create();
ds_list_add(upgrade_texts, "fire speed", "reload speed", "capacity", "damage");

subimage = ds_map_create();
ds_map_add(subimage,up_maxammo, 7);
ds_map_add(subimage,up_reloadspeed, 8);
ds_map_add(subimage,up_firespeed, 9);
ds_map_add(subimage,up_damage, 10);

keys = siege_keys_factory(argument[0]);
wpname = get_weapon_name(argument[0]);
upname = ds_list_find_value(upgrade_texts, real(argument[2]));
text = wpname + " " + upname;

upgrade_key = string(ds_list_find_value(keys, real(argument[2])));
pvalue = ds_map_find_value(global.upgrades, upgrade_key);
upgrade = pvalue  * argument[1];

if(argument[2] == up_maxammo || argument[2] == up_damage) {
   ds_map_replace(global.upgrades, upgrade_key, real(pvalue + upgrade));
} else {
   ds_map_replace(global.upgrades, upgrade_key, real(pvalue - upgrade));
}

global.upgrade ++;
set_item_picker_data(text, string(argument[1] * 100) + "%", ds_map_find_value(subimage, argument[2]), snd_upgrade_add);

ds_map_destroy(subimage);
ds_list_destroy(upgrade_texts);

if(obj_pl01.weapon.object_index == argument[0].object_index) {
   with(obj_pl01.weapon) {
      keys = siege_keys_factory(self);
      switch(argument[2]) {
         case(up_firespeed): 
            fire_speed = ds_map_find_value(global.upgrades, ds_list_find_value(keys, 0));
            break;
         case(up_reloadspeed):     
            reload_speed = ds_map_find_value(global.upgrades, ds_list_find_value(keys, 1));
            break;
         case(up_maxammo):
            max_ammo = ds_map_find_value(global.upgrades, ds_list_find_value(keys, 2));
            if(ammo < max_ammo) { ammo = max_ammo }
            break;
         default:
            damage = ds_map_find_value(global.upgrades, ds_list_find_value(keys, 3));
            break;
      }
      ds_list_destroy(keys);
   }
}

