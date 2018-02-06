/// controls_gamepad()
if(gamepad_axis_value(device, ds_list_find_value(controls, 0)) < -0.5) {
    up = true;
    down = false;
} else if(gamepad_axis_value(device, ds_list_find_value(controls, 0)) > 0.5) {
    up = false;
    down = true;
} else {
    up = false;
    down = false;
}

if(gamepad_axis_value(device, ds_list_find_value(controls, 1)) > 0.5) {
    right = true;
    left = false;
} else if(gamepad_axis_value(device, ds_list_find_value(controls, 1)) < -0.5) {
    right = false;
    left = true;
} else {
    right = false;
    left = false;
}
 
aim = ds_list_find_value(controls, 2);
heal = ds_list_find_value(controls, 8);
shoot = ds_list_find_value(controls, 3);
knife = ds_list_find_value(controls, 9);
action = ds_list_find_value(controls, 4);
reload = ds_list_find_value(controls, 7); 
pause = ds_list_find_value(controls, 10);
weaponnext = ds_list_find_value(controls, 5);
weaponprevious = ds_list_find_value(controls, 6);

/* CONSOLIDATION BEGINS */
controls_consolidation_variables(gamepad_button_check_pressed(device, reload),gamepad_button_check(device, aim),gamepad_button_check_pressed(device, shoot));
/* CONSOLIDATION ENDS */

/* MOVEMENT BEGINS */
player_movement(is_aiming, up, down, left, right);
/* MOVEMENT ENDS */ 

/* AIMING AND SHOOTING BEGINS */
perform_aim(gamepad_button_check(device, aim), gamepad_button_check_pressed(device, aim), gamepad_button_check(device, shoot), gamepad_button_check_pressed(device, shoot), gamepad_button_check_released(device, aim), gamepad_button_check_pressed(device, reload), self); 
/* AIMING AND SHOOTING ENDS */

/* WEAPON SWITCHING BEGINS */
if((gamepad_button_check_pressed(device, weaponnext) || gamepad_button_check_pressed(device, weaponprevious)) && not_reloading_shooting_knife) { 
    switch_weapon(gamepad_button_check_pressed(device, weaponnext), gamepad_button_check_pressed(device, weaponprevious), self);
}
/* WEAPON SWITCHING ENDS */

/* RELOAD BEGINS */
perform_reload(gamepad_button_check_pressed(device, reload), gamepad_button_check(device, shoot));
/* RELOAD ENDS */

/*  KNIFE BEGINS */
knife_usage(self, gamepad_button_check_pressed(device, knife));
/*  KNIFE ENDS */

/* I NEED HEALING */
perform_healing(gamepad_button_check_pressed(device, heal));
/* */  
