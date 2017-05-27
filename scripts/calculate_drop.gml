/// Calculates which ammo must be dropped from an enemy, depending on players inventory.

var ammo = ds_list_create();
ds_list_add(ammo, 0);

for(i = 0; i < ds_list_size(global.pl01wi); i++) {
   if(ds_list_find_value(ammo, i) == noone) {
      ds_list_add(ammo, ds_list_find_value(global.pl01wi, i).ammo_type);
   }
}

switch(ds_list_size(ammo)) {
   case 0:
      drop_item = choose(obj_dp_heal);
   case 1:
      drop_item = choose(obj_dp_heal, obj_dp_handgun, obj_dp_handgun);
   break;
   case 2:
      drop_item = choose(obj_dp_heal, obj_dp_handgun, obj_dp_machinegun);
   break;
   case 3:
      drop_item = choose(obj_dp_heal, obj_dp_handgun, obj_dp_machinegun, obj_dp_shotgun);
   break;
   default:
      drop_item = choose(obj_dp_heal, obj_dp_handgun, obj_dp_machinegun, obj_dp_shotgun, obj_dp_rifle);
   break;
}
ds_list_destroy(ammo);

if(choose(true, false) == true) {
   instance_create(x, y, drop_item);
}
