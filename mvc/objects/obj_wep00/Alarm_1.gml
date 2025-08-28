if(position == 0) {
    position = 0;
    alarm[2] = fire_speed*4;
    shooter.can_knife = true;
} else {
    position --;
    alarm[1] = 1;
    shooter.is_aiming = 1;
    shooter.is_shooting = 0;    
    shooter.can_knife = false;
}    

