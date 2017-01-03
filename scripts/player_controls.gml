if(is_taking_damage == 1 || being_attacked == 1) {exit;} else {
var up, left, down, right, aim, shoot, action, reload;
if(control) {    
    up = ds_list_find_value(controls, 0);
    aim = ds_list_find_value(controls, 4);
    left = ds_list_find_value(controls, 1);
    down = ds_list_find_value(controls, 2);    
    right = ds_list_find_value(controls, 3);    
    shoot = ds_list_find_value(controls, 5);
    reload = ds_list_find_value(controls, 9);     
    action = ds_list_find_value(controls, 6);
    weaponnext = ds_list_find_value(controls, 7);    
    weaponprevious = ds_list_find_value(controls, 8);
    
    /* CONSOLIDATION BEGINS */
    controls_consolidation_variables(keyboard_check_pressed(reload),keyboard_check(aim),keyboard_check_pressed(shoot));
    /* CONSOLIDATION ENDS */
    
    /* MOVEMENT BEGINS */
    player_movement(is_aiming, keyboard_check(up), keyboard_check(down), keyboard_check(left), keyboard_check(right));
    /* MOVEMENT ENDS */         
    
    /* AIMING AND SHOOTING BEGINS */
    perform_aim(keyboard_check(aim), keyboard_check_pressed(aim), keyboard_check(shoot), keyboard_check_pressed(shoot), keyboard_check_released(aim), keyboard_check_pressed(reload), self); 
    /* AIMING AND SHOOTING ENDS */

    /* WEAPON SWITCHING BEGINS */
    if((keyboard_check_pressed(weaponnext) || keyboard_check_pressed(weaponprevious)) && not_reloading_shooting_knife) {         
        switch_weapon(keyboard_check_pressed(weaponnext), keyboard_check_pressed(weaponprevious), self);    
    }
    /* WEAPON SWITCHING ENDS */    

    /* RELOAD BEGINS */
    perform_reload(self);
    /* RELOAD ENDS */
    
    /*  KNIFE BEGINS */
    knife_usage(self, keyboard_check(aim), keyboard_check_pressed(shoot));
    /*  KNIFE ENDS */
    
} else {
    if(gamepad_axis_value(0, ds_list_find_value(controls, 0)) < -0.5) {
        up = true;
        down = false;
    } else if(gamepad_axis_value(0, ds_list_find_value(controls, 0)) > 0.5) {
        up = false;
        down = true;
    } else {
        up = false;
        down = false;
    }
    
    if(gamepad_axis_value(0, ds_list_find_value(controls, 1)) > 0.5) {
        right = true;
        left = false;
    } else if(gamepad_axis_value(0, ds_list_find_value(controls, 1)) < -0.5) {
        right = false;
        left = true;
    } else {
        right = false;
        left = false;
    }
    
    aim = ds_list_find_value(controls, 2);
    shoot = ds_list_find_value(controls, 3);    
    action = ds_list_find_value(controls, 4);    
    reload = ds_list_find_value(controls, 7);     
    weaponnext = ds_list_find_value(controls, 5);    
    weaponprevious = ds_list_find_value(controls, 6);

    /* CONSOLIDATION BEGINS */
    controls_consolidation_variables(gamepad_button_check_pressed(0, reload),gamepad_button_check(0, aim),gamepad_button_check_pressed(0, shoot));
    /* CONSOLIDATION ENDS */
    
    /* MOVEMENT BEGINS */
    player_movement(is_aiming, up, down, left, right);
    /* MOVEMENT ENDS */         
    
    /* AIMING AND SHOOTING BEGINS */
    perform_aim(gamepad_button_check(0, aim), gamepad_button_check_pressed(0, aim), gamepad_button_check(0, shoot), gamepad_button_check_pressed(0, shoot), gamepad_button_check_released(0, aim), gamepad_button_check_pressed(0, reload), self); 
    /* AIMING AND SHOOTING ENDS */

    /* WEAPON SWITCHING BEGINS */
    if((gamepad_button_check_pressed(0, weaponnext) || gamepad_button_check_pressed(0, weaponprevious)) && not_reloading_shooting_knife) {         
        switch_weapon(gamepad_button_check_pressed(0, weaponnext), gamepad_button_check_pressed(0, weaponprevious), self);    
    }
    /* WEAPON SWITCHING ENDS */    

    /* RELOAD BEGINS */
    perform_reload(self);
    /* RELOAD ENDS */
    
    /*  KNIFE BEGINS */
    knife_usage(self, gamepad_button_check(0, aim), gamepad_button_check_pressed(0, shoot));
    /*  KNIFE ENDS */    
}}
