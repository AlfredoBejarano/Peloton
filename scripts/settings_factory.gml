// argument0 - keyboard usage (it just returns player's 1 keybindings, just player 1 can use keyboard).
// argument1 - player object.

settings = ds_list_create();
pl = argument1;
/*
switch(pl) {
   case (obj_pl01): {
      if(argument0 == true) { 
       ds_list_add(settings, global.keybindings, global.pl01wi, obj_pl01_wep_hud, global.pl01_character); 
       break;
      } else {
       ds_list_add(settings, global.pl01gp, global.pl01wi, obj_pl01_wep_hud, global.pl01_character); 
       break;
      }
   }
   
   case (obj_pl02): {
      ds_list_add(settings, global.pl02gp, global.pl01wi, obj_pl01_wep_hud, global.pl02_character);    
      break;
   }
} */
if(argument0 == true) { 
       ds_list_add(settings, global.keybindings, global.pl01wi, obj_pl01_wep_hud, global.pl01_character); 
      } else {
       ds_list_add(settings, global.pl01gp, global.pl01wi, obj_pl01_wep_hud, global.pl01_character); 
      }
return settings;
