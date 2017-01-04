control = global.control;
settings = settings_factory(control, obj_pl01);
controls = ds_list_find_value(settings, 0);

if(keyboard_check_pressed(vk_anykey)) { 
    global.control = true; 
} 

if(gamepad_anybutton()) { 
    global.control = false;
}

if(control == true) {
   abutton = ds_list_find_value(controls, 6);
   ybutton = ds_list_find_value(controls, 10);   
} else {
   abutton = ds_list_find_value(controls, 4);
   ybutton = ds_list_find_value(controls, 8);
}
