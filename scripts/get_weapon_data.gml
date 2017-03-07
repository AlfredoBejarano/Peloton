///get_weapon_data(weapon)
data = ds_list_create();
switch(argument[0]) {
   case obj_wep01: 
      ds_list_add(data, ds_list_find_value(global.wepnames, 1), 1, 11);
      break;
   case obj_wep02: 
      ds_list_add(data, ds_list_find_value(global.wepnames, 2), 2, 12);
      break;      
   case obj_wep03: 
      ds_list_add(data, ds_list_find_value(global.wepnames, 3), 3, 13);
      break;      
   case obj_wep04: 
      ds_list_add(data, ds_list_find_value(global.wepnames, 4), 4, 14);
      break;      
   case obj_wep05: 
      ds_list_add(data, ds_list_find_value(global.wepnames, 5), 1, 15);
      break;      
   case obj_wep06: 
      ds_list_add(data, ds_list_find_value(global.wepnames, 6), 2, 16);
      break;      
   case obj_wep07: 
      ds_list_add(data, ds_list_find_value(global.wepnames, 7), 3, 17);
      break;      
   case obj_wep08: 
      ds_list_add(data, ds_list_find_value(global.wepnames, 8), 4, 18);         
      break;      
   default: 
      ds_list_add(data, ds_list_find_value(global.wepnames, 0), 0, 10);
      break;      
}

return data;
