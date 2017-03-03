///siege_ammo_upgrade()
kills = global.kills;
upgrades = global.upgrade;
if(global.kills % 2 == 0 && global.kills > 0) {
if(global.upgrade == 0 && kills == 2) {
   set_item_picker_data("Handgun P07 Fire Speed", "10%", 9, snd_upgrade_add);
   global.wep01fs -= global.wep01fs*0.1;
   global.upgrade ++;
   if(obj_pl01.weapon.object_index == obj_wep01.object_index) {
      with(obj_pl01.weapon) {
         fire_speed = global.wep01fs;
      }
   } 
} else if(global.upgrade == 1 && kills == 4)  {
   set_item_picker_data("Handgun P07 Damage", "20%", 10, snd_upgrade_add);
   global.wep01dmg += global.wep01dmg*0.2;
   global.upgrade ++;
   if(obj_pl01.weapon.object_index == obj_wep01.object_index) {
      with(obj_pl01.weapon) {
         damage = global.wep01dmg;
      }
   }   
} else if(global.upgrade == 2 && kills == 6) {
   set_item_picker_data("Handgun P07 Capacity", "25%", 7, snd_upgrade_add);
   global.wep01ma += global.wep01ma * 0.25;
   global.upgrade ++;
   if(obj_pl01.weapon.object_index == obj_wep01.object_index) {
      with(obj_pl01.weapon) {
         max_ammo = global.wep01ma;
         if(ammo < max_ammo) {
            ammo = max_ammo;
         }
      }
   }
} else if(global.upgrade == 3 && kills == 8)  {
   set_item_picker_data("Handgun P07 Reload Speed", "10%", 8, snd_upgrade_add);
   global.wep01rs -= global.wep01rs*0.1;
   global.upgrade ++;
   if(obj_pl01.weapon.object_index == obj_wep01.object_index) {
      with(obj_pl01.weapon) {
         reload_speed = global.wep01rs;
      }
   } 
} else if(global.upgrade == 4 && kills == 10)  {
   set_item_picker_data("Machine Gun X05", global.wep02ma*3, 12, snd_weapon_add);
   global.upgrade ++;
   ds_list_add(obj_pl01.weapons_inventory, obj_wep02);
   ds_list_add(obj_pl01.weapons_ammo, global.wep02ma);
   ds_list_replace(obj_pl01.ammo_inventory, 2, global.wep02ma*2);
} else if(global.upgrade == 5 && kills == 12) {
   set_item_picker_data("Machinegun X05 Fire Speed", "10%", 9, snd_upgrade_add);
   global.wep02fs -= global.wep02fs*0.1;
   global.upgrade ++;
   if(obj_pl01.weapon.object_index == obj_wep02.object_index) {
      with(obj_pl01.weapon) {
         fire_speed = global.wep02fs;
      }
   } 
} else if(global.upgrade == 6 && kills == 14)  {
   set_item_picker_data("Machinegun X05 Damage", "100%", 10, snd_upgrade_add);
   global.wep02dmg += global.wep02dmg;
   global.upgrade ++;
   if(obj_pl01.weapon.object_index == obj_wep02.object_index) {
      with(obj_pl02.weapon) {
         damage = global.wep02dmg;
      }
   }   
} else if(global.upgrade == 7 && kills == 16) {
   set_item_picker_data("Machinegun X05 Capacity", "10%", 7, snd_upgrade_add);
   global.wep02ma += global.wep02ma*0.1;
   global.upgrade ++;
   if(obj_pl01.weapon.object_index == obj_wep02.object_index) {
      with(obj_pl01.weapon) {
         max_ammo = global.wep02ma;
         if(ammo < max_ammo) {
            ammo = max_ammo;
         }
      }
   }
} else if(global.upgrade == 8 && kills == 18)  {
   set_item_picker_data("Machinegun X05 Reload Speed", "10%", 8, snd_upgrade_add);
   global.wep02rs -= global.wep02rs*0.1;
   global.upgrade ++;
   if(obj_pl01.weapon.object_index == obj_wep01.object_index) {
      with(obj_pl01.weapon) {
         reload_speed = global.wep02rs;
      }
   } 
} else if(global.upgrade == 9 && kills == 20)  {
   set_item_picker_data("Shotgun 870", global.wep03ma*3, 13, snd_weapon_add);
   global.upgrade ++;
   ds_list_add(obj_pl01.weapons_inventory, obj_wep03);
   ds_list_add(obj_pl01.weapons_ammo, global.wep03ma);
   ds_list_replace(obj_pl01.ammo_inventory, 3, global.wep03ma*2);
}}
