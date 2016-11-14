//argument0 - The Keybindings for player1 (as DS_list)
//argument1 - The gamepad buttons for player1 (as DS_list)
//argument2 - Character's speed movement
//argument3 - Player second hand
//argument4 - Player object itself

controls = ds_list_find_value(settings, 0);
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
    list = ds_list_create();
    ds_list_add(list, argument0 , argument1 , argument2 , argument3 , argument4);
}
