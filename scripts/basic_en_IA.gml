///basic_en_IA(movement speed, can be idle, attack distance, attack_alarm)
   if(is_taking_damage == 1) { exit; }

/// Enemy basic IA
depth = -y;
target = instance_nearest(x,y,obj_player_parent);

if(x < 0) { x = 0; } 
if(x > room_width) { x = room_width; }
if(y > 1075) { y = 1075; }

if(instance_exists(target)) {
    // Starts following the player if certain distance is met.
    if((distance_to_object(target) < 512 && is_attacking == 0) && argument[1] == true) { 
       can_move = 1; 
    }
    
    if(can_move == 1){
    
       if(is_attacking == 0) {
          // Follow the targeted player
          mp_potential_step(target.x, target.y, argument[0], false);
       }
       
       // Change facing direction depending on target's location.
       if(x > target.x) { 
          image_xscale = -1; 
       } else { 
          image_xscale = 1; 
       }
    }
    
    // Attack the player.
    if((distance_to_object(target) < real(argument[2])) && (can_attack == 1) && (is_hitting == 0)) {
        can_move = 0;
        alarm[2] = 1;
        can_attack = 0;
        is_attacking = 1;
        if(!audio_is_playing(att_sound)) {
           audio_play_sound(att_sound, 0, false);    
        }
    }
    
    // Kill animation, prevents enemy for attacking, moving or doing any action other than dying.
    if(hp <= 0 && dying == 0) { 
        can_attack = 0;
        can_get_hit = 0;
        hp = 0;
        dying = 1;
        alarm[1] = 1;
        can_move = 0;
        instance_create(x,y-5, obj_blood_floor);
    }
    
    // Prevents enemy health overflows or undeflows.
    if(hp <= 0) { 
       hp = 0; 
    } else if(hp >= max_hp) {
       hp = max_hp;
    }
} else {
    can_move = 0;
}
