/* gamepad_color_factory(gamepad_button); */

switch argument0 {
    case gp_face1: return gp_green;
    case gp_face2: return gp_red;
    case gp_face3: return gp_blue;
    case gp_face4: return gp_yellow;
    default: return gp_white;
}
