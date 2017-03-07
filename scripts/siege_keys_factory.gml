///siege_keys_factory(weapon)

kys = ds_list_create();

if(argument[0] == obj_wep02) {
   ds_list_add(kys, "wep02fs", "wep02rs", "wep02ma", "wep02dmg");
} else if(argument[0] == obj_wep03) {
   ds_list_add(kys, "wep03fs", "wep03rs", "wep03ma", "wep03dmg");
} else if(argument[0] == obj_wep04) {
   ds_list_add(kys, "wep04fs", "wep04rs", "wep04ma", "wep04dmg");
} else if(argument[0] == obj_wep05) {
   ds_list_add(kys, "wep05fs", "wep05rs", "wep05ma", "wep05dmg");
} else if(argument[0] == obj_wep06) {
   ds_list_add(kys, "wep06fs", "wep06rs", "wep06ma", "wep06dmg");
} else if(argument[0] == obj_wep07) {
   ds_list_add(kys, "wep07fs", "wep07rs", "wep07ma", "wep07dmg");
} else if(argument[0] == obj_wep08) {
   ds_list_add(kys, "wep08fs", "wep08rs", "wep08ma", "wep08dmg");
} else {
   ds_list_add(kys, "wep01fs", "wep01rs", "wep01ma", "wep01dmg");
}

return kys;
