target = instance_nearest(x, y, obj_player_parent);
if(distance_to_object(target) <  32) {
    depth = -1200;    
    pl_position = true;
    abutton = target.abutton;
    with(target) {
        if(keyboard_check_pressed(abutton) || gamepad_button_check_pressed(0, abutton)) {
            picked = true;
            pick_droppable();
    }
}
} else {
   button = noone;
   pl_position = false;
   depth = -y;
}

