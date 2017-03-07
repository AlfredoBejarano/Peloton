/// Calculates which ammo must be dropped from an enemy, depending on players inventory.

dropable[0] = obj_dp_heal;
dropable[1] = noone;
dropable[2] = noone;
dropable[3] = noone;
dropable[4] = noone;

dropables = 0;
for(i = 0; i < ds_list_size(obj_pl01.ammo_inventory); i ++) {
   bullets = ds_list_find_value(obj_pl01.ammo_inventory, i);
   if(bullets != 0) {
      ammo_tp = ds_list_find_index(obj_pl01.ammo_inventory, bullets);
      dropable[ammo_tp] = ammo_objects_factory(ammo_tp);
      dropables ++;
   }
}

do {
   drop_item = choose(dropable[0], dropable[1], dropable[2], dropable[3], dropable[4]);
} until (drop_item != noone);

instance_create(x, y, drop_item);
