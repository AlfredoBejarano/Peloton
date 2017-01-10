/// Calculates which ammo must be dropped from an enemy, depending on players inventory.

weps1 = global.pl01wi;
dropable[0] = obj_dp_heal;
dropable[1] = false;
dropable[2] = false;
dropable[3] = false;
dropable[4] = false;
for(i = 0; i < ds_list_size(weps1); i ++) {
   wep_obj = ds_list_find_value(weps1, i);
   ammo_tp = wep_obj.ammo_type;
   dropable[ammo_tp] = ammo_objects_factory(ammo_tp);
}

instance_create(x, y, choose(dropable[0], dropable[1], dropable[2], dropable[3], dropable[4]));

