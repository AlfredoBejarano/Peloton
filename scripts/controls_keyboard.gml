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
pause = ds_list_find_value(controls, 12); 
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
    if(mouse_check_button(aim)) {
        if(mouse_x > x) {
            image_xscale = 1;
        } else {
            image_xscale = -1;
        }
        
    }
    perform_aim(mouse_check_button(aim), mouse_check_button_pressed(aim), mouse_check_button(shoot), mouse_check_button_pressed(shoot), mouse_check_button_released(aim), keyboard_check_pressed(reload), self); 
}
/* AIMING AND SHOOTING ENDS */

/* WEAPON SWITCHING BEGINS */
if(mouse_wheel_up() || mouse_wheel_down() && not_reloading_shooting_knife) { 
    switch_weapon(mouse_wheel_up(), mouse_wheel_down(), self);
}
/* WEAPON SWITCHING ENDS */

/* RELOAD BEGINS */
perform_reload(self);
/* RELOAD ENDS */

/*KNIFE BEGINS */
knife_usage(self, keyboard_check_pressed(knife));
/*KNIFE ENDS */

/* I NEED HEALING */
perform_healing(keyboard_check_pressed(heal));
/* */
