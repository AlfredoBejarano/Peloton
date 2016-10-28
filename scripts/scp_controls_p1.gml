//argument0 - The Keybindings for player1 (as DS_list)
//argument1 - The gamepad buttons for player1 (as DS_list)
//argument2 - Character's speed movement
//argument3 - Player second hand

var up, left, down, right, aim, shoot, action, reload;

if(global.control == "keyboard") {
    up = ds_list_find_value(argument0, 0);
    aim = ds_list_find_value(argument0, 4);
    left = ds_list_find_value(argument0, 1);
    down = ds_list_find_value(argument0, 2);    
    right = ds_list_find_value(argument0, 3);    
    shoot = ds_list_find_value(argument0, 5);
    reload = ds_list_find_value(argument0, 9);     
    action = ds_list_find_value(argument0, 6);
    weaponnext = ds_list_find_value(argument0, 7);    
    weaponprevious = ds_list_find_value(argument0, 8);
    
    //Player movement - fixed 
    if(keyboard_check(left)  && is_aiming = 0)      { x -= argument2;   image_xscale = -1; }     
    if(keyboard_check(right) && is_aiming = 0)      { x += argument2;   image_xscale = 1;  } 
    if(keyboard_check(up)    && is_aiming = 0)      { y -= (argument2 + (argument2 / 2));  }
    if(keyboard_check(down)  && is_aiming = 0)      { y += (argument2 + (argument2 / 2));  }      
        
    //Player Movement -  variable
    if(keyboard_check(left)  && is_aiming = 1)      { x -= argument2 / 2; }
    if(keyboard_check(right) && is_aiming = 1)      { x += argument2 / 2; }
    if(keyboard_check(up)    && is_aiming = 1)      { y -= ((argument2 + (argument2 / 2)) / 2); }
    if(keyboard_check(down)  && is_aiming = 1)      { y += ((argument2 + (argument2 / 2)) / 2); }
        
    // Player shooting
    if(!keyboard_check(aim) && is_shooting == 0) { is_aiming = 0; }    
    if(keyboard_check(aim)) {
        is_aiming = 1;
        
        // Weapon firing
        if(keyboard_check(shoot) && is_shooting == 0 && is_reloading == 0) {
            if(weapon.ammo > 0) {
                is_shooting = 1;
                create_projectile(weapon.x + (image_xscale * 59), weapon.y - 31, obj_bullet, 60 * image_xscale, 0, 1, 120, image_xscale, 1);
                weapon.recoil = true;
                weapon.alarm[0] = weapon.fire_speed - (weapon.fire_speed/2);
                weapon.ammo --;
                audio_play_sound(weapon.firing_sound, 0, false);
                alarm[0] = weapon.fire_speed;
            } else {
                is_shooting = 1;
                audio_play_sound(snd_wep01_empty, 0, false);
                alarm[0] = weapon.fire_speed;
            }
        }
    } 

    //Weapon switch
    if(keyboard_check_pressed(weaponnext) && weapon < 5)        { audio_play_sound(snd_wep_switch, 0, false); }
    if(keyboard_check_pressed(weaponprevious) && weapon > 1)    { audio_play_sound(snd_wep_switch, 0, false); }

    // Weapon reload
    if(keyboard_check_pressed(reload) && is_reloading == 0 && is_shooting = 0 && weapon.ammo < weapon.max_ammo && is_switching == 0) {
        is_reloading = 1;
        weapon.alarm[1] = 1;        
        alarm[1] = weapon.reload_speed;
        weapon.alarm[2] = weapon.reload_speed;
        if(weapon.has_magazine == true) {
            argument3.alarm[0] = (weapon.reload_speed / 4) * 1;
        }
    }        
} else {
    x = argument1;
}
