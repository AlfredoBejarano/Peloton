/// dropable_factory(object name) - returns an objects Id based on a number.
if(argument[0] == obj_wep01 || argument[0] == obj_wep05) {
    return obj_dp_handgun;
} else if(argument[0] == obj_wep02 || argument[0] == obj_wep06) {
    return obj_dp_machinegun;
} else if(argument[0] == obj_wep03 || argument[0] == obj_wep07) {
    return obj_dp_shotgun;
} else if(argument[0] == obj_wep04 || argument[0] == obj_wep08) {
    return obj_dp_rifle;
} else {
    return obj_dp_heal;
}
