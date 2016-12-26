control = global.control;
settings = settings_factory(control, self);
if(keyboard_check_pressed(vk_anykey)) { 
    global.control = true; 
    abutton = ds_list_find_value(controls, 6);
}
if(gamepad_anybutton()) { 
    global.control = false; 
    abutton = ds_list_find_value(controls, 4);
}
controls = ds_list_find_value(settings, 0);
