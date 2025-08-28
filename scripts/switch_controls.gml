control = global.control;
settings = settings_factory(control, obj_pl01);
controls = ds_list_find_value(settings, 0);

if(control == true) {
   abutton = ds_list_find_value(controls, 6);
   ybutton = ds_list_find_value(controls, 10);   
} else {
   abutton = ds_list_find_value(controls, 4);
   ybutton = ds_list_find_value(controls, 8);
}
