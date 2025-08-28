///siege_fire_speed_upgrade_factory(weapon, value key, upgrade quantity)
name = ds_list_create();
ds_list_add(name, 
   "fire speed",
   "reload speed",
   "max ammo",
   "damage"
);


global.upgrade ++;
set_item_picker_data(string(wep.name) + " " + ds_list_find_value(name, argument[5]), string(argument[2] * 100) + "%", 9, snd_upgrade_add);
if(obj_pl01.weapon.object_index == argument[0].object_index) {
   with(obj_pl01.weapon) {
      
   }
}

