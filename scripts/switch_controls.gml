control = global.control;
settings = settings_factory(control, self);
if(keyboard_check_pressed(vk_anykey)) { global.control = true; }
if(gamepad_anybutton()) { global.control = false; }
controls = ds_list_find_value(settings, 0);
