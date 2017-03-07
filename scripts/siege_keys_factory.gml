//siege_keys_factory(weapon)

kys = ds_list_create();

if(argument[0].object_index == obj_wep01.object_index) {
   ds_list_add(kys, "wep01fs", "wep01rs", "wep01ma", "wep01dmg");
} else if(argument[0].object_index == obj_wep02.object_index) {
   ds_list_add(kys, "wep02fs", "wep02rs", "wep02ma", "wep02dmg");
} else if(argument[0].object_index == obj_wep03.object_index) {
   ds_list_add(kys, "wep03fs", "wep03rs", "wep03ma", "wep03dmg");
} else {
   ds_list_add(kys, "wep04fs", "wep04rs", "wep04ma", "wep04dmg");
}

return kys;
