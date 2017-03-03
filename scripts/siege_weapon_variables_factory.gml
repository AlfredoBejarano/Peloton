///siege_weapon_variables_factory(weapon object)

vars = ds_list_create();

switch(argument[0].object_index) {
   case(obj_wep02):
      ds_list_add(vars, global.wep02ma, global.wep02rs, global.wep02fs, global.wep02dmg);
      break;
   default:
      ds_list_add(vars, global.wep01ma, global.wep01rs, global.wep01fs, global.wep01dmg);
      break;   
}

return vars;
