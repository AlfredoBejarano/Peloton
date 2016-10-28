//argument0 - The Keybindings for player1 (as DS_list)
//argument1 - The gamepad buttons for player1 (as DS_list)
//argument2 - Character's speed movement
//argument3 - Fire Speed

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
            if(ammo > 0) {
                is_shooting = 1;
                create_projectile(obj_wep01.x + (image_xscale * 59), obj_wep01.y - 31, obj_bullet, 60 * image_xscale, 0, 1, 120, image_xscale, 1);
                argument4.recoil = true;
                argument4.alarm[0] = argument3 - (argument3/2);
                ammo --;
                audio_play_sound(snd_wep01_shot, 0, false);
                alarm[0] = argument3;
            } else {
                is_shooting = 1;
                audio_play_sound(snd_wep01_empty, 0, false);
                alarm[0] = argument3;
            }
        }
    } 

    //Weapon switch
    if(keyboard_check_pressed(weaponnext) && weapon < 5)        { weapon ++;              audio_play_sound(snd_wep_switch, 0, false); }
    if(keyboard_check_pressed(weaponprevious) && weapon > 1)    { weapon --;              audio_play_sound(snd_wep_switch, 0, false); }

    // Weapon reload
    if(keyboard_check_pressed(reload) && is_reloading == 0 && is_shooting = 0 && ammo < max_ammo) {
        is_reloading = 1;
        alarm[1] = 60;
    }        
} else {
    x = argument1;
}
