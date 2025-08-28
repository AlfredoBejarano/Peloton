// Switch controls depending on the input
if(keyboard_check_pressed(vk_anykey) && global.control == false) { 
    global.control = true; 
    alarm[1] = 1;
} 

if(gamepad_anybutton() && global.control) { 
    global.control = false;
    alarm[1] = 1;    
}

// Sets the cursor depending on the control type.
if(global.control) {
    window_set_cursor(cr_cross);
} else {
    window_set_cursor(cr_none);
}

if keyboard_check_pressed(vk_f12) {
    screen_save(working_directory + "\\Screens\\Screen_"+string(0)+".png")
}

