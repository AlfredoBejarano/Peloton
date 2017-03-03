///siege_ammo_upgrade(player object, weapon object id)
vars = siege_weapon_variables_factory(argument[1]);

   global.wep01ma += 2;
   global.upgrade ++;
   if(obj_pl01.weapon.object_index == obj_wep01.object_index) {
      with(obj_pl01.weapon) {
         max_ammo = global.wep01ma;
         if(ammo < max_ammo) {
            ammo = max_ammo;
         }
      }
   }
