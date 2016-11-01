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
    if(keyboard_check(left)  && is_aiming = 0 && x > 128               )      { x -= argument2;   image_xscale = -1; }     
    if(keyboard_check(right) && is_aiming = 0 && x < room_width - 128  )      { x += argument2;   image_xscale = 1;  } 
    if(keyboard_check(up)    && is_aiming = 0 && y > 440               )      { y -= (argument2 + (argument2 / 2));  }
    if(keyboard_check(down)  && is_aiming = 0 && y < room_height - 128 )      { y += (argument2 + (argument2 / 2));  }      
        
    //Player Movement -  variable
    if(keyboard_check(left)  && is_aiming = 1 && x > 128               )      { x -= argument2 / 2; }
    if(keyboard_check(right) && is_aiming = 1 && x < room_width - 128  )      { x += argument2 / 2; }
    if(keyboard_check(up)    && is_aiming = 1 && y > 440               )      { y -= ((argument2 + (argument2 / 2)) / 2); }
    if(keyboard_check(down)  && is_aiming = 1 && y < room_height - 128 )      { y += ((argument2 + (argument2 / 2)) / 2); }
        
    // Player shooting
    if(!keyboard_check(aim) && is_shooting == 0) { is_aiming = 0; }    
    
    // Weapon aim (audio play)
    if(keyboard_check_pressed(aim)) { audio_play_sound(weapon.aim_sound, 1, false); }
    
    // Weapon aiming (hold)
    if(keyboard_check(aim)) {
        is_aiming = 1;                
        
        // Weapon firing
        if(keyboard_check(shoot) && is_shooting == 0 && is_reloading == 0 && is_aiming == 1) {
            if(weapon.ammo > 0) {
                weapon.alarm[4] = 1;
                is_shooting = 1;
                weapon.recoil = true;
                if(weapon.has_magazine) { 
                    weapon.alarm[0] = weapon.fire_speed - (weapon.fire_speed/2); 
                } else { 
                    weapon.alarm[0] = weapon.fire_speed - ((weapon.fire_speed/4)*3); 
                    weapon.alarm[1] = weapon.fire_speed - (weapon.fire_speed/2)
                    weapon.alarm[2] = weapon.fire_speed - (weapon.fire_speed/4);                                         
                }
                weapon.ammo --;
                audio_play_sound(weapon.firing_sound, 0, false);
                alarm[0] = weapon.fire_speed;
            }
        }
        
        //Pressing shoot button while weapon is empty
        if(keyboard_check_pressed(shoot) && is_aiming == 1 && weapon.ammo == 0 && current_ammo <= 0) {
            audio_play_sound(weapon.empty_sound, 0, false);
        }
    } 

    //Weapon switch
    if(keyboard_check_pressed(weaponnext) && current_weapon < ds_list_size(weapons_inventory)-1 && is_reloading == 0 && is_shooting == 0) { 
        is_switching = 1;
        ds_list_replace(weapons_ammo, current_weapon, weapon.ammo);       
        current_weapon ++;
        with(weapon) { instance_destroy(); }
        weapon = ds_list_find_value(global.pl01_weapon_inventory, current_weapon);
        with (instance_create(x + (64 * image_xscale), y+64, weapon)) { shooter = obj_pl01; }
        current_ammo = ds_list_find_value(ammo_inventory, weapon.ammo_type);
        audio_play_sound(snd_wep_switch, 0, false); 
        is_switching = 0;
    }
    
    if(keyboard_check_pressed(weaponprevious) && current_weapon > 0 && is_reloading == 0 && is_shooting == 0) { 
        is_switching = 1;
        ds_list_replace(weapons_ammo, current_weapon, weapon.ammo);       
        current_weapon --;
        with(weapon) { instance_destroy(); }
        weapon = ds_list_find_value(global.pl01_weapon_inventory, current_weapon);
        with (instance_create(x + (64 * image_xscale), y+64, weapon)) { shooter = obj_pl01; }
        current_ammo = ds_list_find_value(ammo_inventory, weapon.ammo_type);
        audio_play_sound(snd_wep_switch, 0, false); 
        is_switching = 0;
    }

    // Weapon reload
    if((keyboard_check_pressed(reload) || (keyboard_check(shoot) && is_aiming == 1)) && is_reloading == 0 && is_shooting = 0 && weapon.ammo < weapon.max_ammo && is_switching == 0 && current_ammo > 0) {
        is_reloading = 1;
        weapon.alarm[1] = 1;        
        alarm[1] = weapon.reload_speed;
        weapon.alarm[2] = weapon.reload_speed;
        if(weapon.has_magazine == true) {
            argument3.alarm[0] = (weapon.reload_speed / 4);
        } else {
            weapon.pump = 1;
            argument3.alarm[0] = argument3.time / 2;
            weapon.alarm[3] = argument3.time;
        }
    }  
    
    // Knife
    if(keyboard_check_pressed(shoot) && is_aiming == 0 && is_shooting = 0 && is_reloading == 0) {
        is_aiming = 1;
        is_shooting = 1;
        obj_pl01.current_ammo = 0;
        audio_play_sound(snd_wep0_aim, 1, false);
        ds_list_replace(weapons_ammo, current_weapon, weapon.ammo);       
        with(weapon) {instance_destroy();}
        weapon = obj_wep00;
        with(instance_create(x,y, weapon)){
            shooter = obj_pl01;
            audio_play_sound(firing_sound, 0, false);
        }
        weapon.alarm[0] = weapon.fire_speed/4;
    }      
} else {
    x = argument1;
}
