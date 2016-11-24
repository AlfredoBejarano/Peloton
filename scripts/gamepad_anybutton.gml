if(gamepad_axis_value(0, gp_axislv) > 0.5 || gamepad_axis_value(0, gp_axislv) < -0.5 || gamepad_axis_value(0, gp_axislh) > 0.5 || gamepad_axis_value(0, gp_axislh) < -0.5) {
    return true;
}

if(gamepad_button_check(0, gp_face1) || gamepad_button_check(0, gp_face2) || gamepad_button_check(0, gp_face3) || gamepad_button_check(0, gp_face4)) {
    return true;
}

if(gamepad_button_check(0, gp_shoulderl) || gamepad_button_check(0, gp_shoulderr) || gamepad_button_check(0, gp_shoulderlb) || gamepad_button_check(0, gp_shoulderrb)) {
    return true;
}

if(gamepad_button_check(0, gp_padu) || gamepad_button_check(0, gp_padd) || gamepad_button_check(0, gp_padl) || gamepad_button_check(0, gp_padr)) {
    return true;
}

if(gamepad_button_check(0, gp_select) || gamepad_button_check(0, gp_start) || gamepad_button_check(0, gp_stickl) || gamepad_button_check(0, gp_stickr)) {
    return true;
}
