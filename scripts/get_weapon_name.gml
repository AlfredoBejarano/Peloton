///get_weapon_name(weapon)
switch(argument[0].object_index) {
   case obj_wep01.object_index: return ds_list_find_value(global.wepnames, 1);
   case obj_wep02.object_index: return ds_list_find_value(global.wepnames, 2);
   case obj_wep03.object_index: return ds_list_find_value(global.wepnames, 3);
   case obj_wep04.object_index: return ds_list_find_value(global.wepnames, 4);
   default: return ds_list_find_value(global.wepnames, 0);         
}
