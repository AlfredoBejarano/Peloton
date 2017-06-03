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
sounds = ds_list_create();
ds_list_add(sounds, snd_char01_dam01, snd_char01_dam02, snd_char01_dam03, snd_char01_dam04, snd_char01_dam05, snd_char01_critical_hp, snd_char01_chain_hit, snd_char01_death);
if(argument0 == true) { 
   ds_list_add(settings, global.keybindings, global.pl01wi, obj_pl01_wep_hud, global.pl01_character, sounds); 
} else {
   ds_list_add(settings, global.pl01gp, global.pl01wi, obj_pl01_wep_hud, global.pl01_character, sounds); 
}
return settings;
