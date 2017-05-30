if(is_taking_damage == 1 || being_attacked == 1 || is_dying == true) {exit;} else {
var up, left, down, right, aim, shoot, action, reload;
if(control) {    
    up = ds_list_find_value(controls, 0);
    aim = ds_list_find_value(controls, 4);
    left = ds_list_find_value(controls, 1);
    down = ds_list_find_value(controls, 2);    
    right = ds_list_find_value(controls, 3);    
    shoot = ds_list_find_value(controls, 5);
    heal = ds_list_find_value(controls, 10);
    knife = ds_list_find_value(controls, 11);        
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
      if(global.touch) {
         perform_touch_aim(keyboard_check(aim), keyboard_check_pressed(aim), keyboard_check(shoot), keyboard_check_pressed(shoot), keyboard_check_released(aim), keyboard_check_pressed(reload), self); 
         if(keyboard_check(shoot) && weapon.ammo == 0){
            perform_reload(self);
         }
      } else {
         perform_aim(mouse_check_button(aim), mouse_check_button_pressed(aim), mouse_check_button(shoot), mouse_check_button_pressed(shoot), mouse_check_button_released(aim), keyboard_check_pressed(reload), self); 
      }
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
    knife_usage(self, keyboard_check_pressed(knife));
    /*  KNIFE ENDS */
    
    /* I NEED HEALING */
    perform_healing(keyboard_check_pressed(heal));
    /* */
    
} else {
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
    perform_reload(self);
    /* RELOAD ENDS */
    
    /*  KNIFE BEGINS */
    knife_usage(self, gamepad_button_check_pressed(device, knife));
    /*  KNIFE ENDS */    
    
    /* I NEED HEALING */
    perform_healing(gamepad_button_check_pressed(device, heal));
    /* */    
}}
