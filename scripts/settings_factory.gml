// argument0 - keyboard usage (it just returns player's 1 keybindings, just player 1 can use keyboard).
// argument1 - player object.

settings = ds_list_create();

if(argument0) { 
    ds_list_add(settings, global.keybindings, global.pl01wi, obj_pl01_wep_hud, global.pl01_character); 
} else {
    settings = gamepad_factory(argument1);
}

return settings;
