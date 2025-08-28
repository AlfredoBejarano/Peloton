/// pause_game(key/gamepad press action)
if(!visible) {
 exit;
} else {
    if(argument[0]) {
        io_clear();
        if(visible) {
            game_paused = false;
        } else {
            visible = true;
            game_paused = true;
        }
    }
    
    if(game_paused && visible) {
        if(!deactivated) {
            pause_bg = screen_capture_background();
            instance_deactivate_all(true);
            deactivated = true;
        }
    }
    
    if(game_paused && deactivated) {
        /// TODO - draw menu here.
    } else {
        /// TODO - destroy menu objects.
        if(background_exists(pause_bg)) {
            background_delete(pause_bg);
        }
        instance_activate_all(); 
        deactivated = false;
        visible = false;
    }
}
