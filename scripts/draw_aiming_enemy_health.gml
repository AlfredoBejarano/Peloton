/// draw_aiming_enemy_health(distance);
draw_self();
if(shooter.is_aiming == 1) { // Check if the player is aiming.
    target = collision_line(x, y, x + (argument[0] * image_xscale), y, obj_target_parent, true, true); // Set the target.
    if(target != noone) {
        draw_target_health(target);     
    }
}


