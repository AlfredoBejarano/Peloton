/// Calculates which ammo must be dropped from an enemy, depending on players inventory.

randomize();
list = global.pl01wi;
list_size = ds_list_size(list) - 1;
list_index = irandom_range(0, list_size);
chance = irandom_range(1,4);
drop_item = droppable_factory(ds_list_find_value(list, list_index));

if(choose(true, false)) {
   instance_create(x, y, choose(drop_item, drop_item, drop_item, drop_item, obj_dp_heal));
}
