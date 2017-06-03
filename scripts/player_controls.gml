///player_controls()
/**
* This Script relies heavely on the controls_consolidations_variables script.
**/
if(is_taking_damage == 1 || being_attacked == 1 || is_dying == true) {
    exit;
} else {
    var up, left, down, right, aim, shoot, action, reload;
    if(control) {   
        controls_keyboard();
    } else {
        controls_gamepad();
    }   
}
