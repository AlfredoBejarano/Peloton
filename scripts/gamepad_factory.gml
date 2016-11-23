// argument0 - Players object.

var control = ds_list_create();

switch(argument0) {
    case obj_pl01:
        ds_list_add(control, global.pl01gp, global.pl01wi, obj_pl01_wep_hud, global.pl01_character);
    break;
}

return control;
