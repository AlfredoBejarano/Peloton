///set_resolution(percentage)
// This script resizes the game render resolution to the one of the device's so it can run properly.

var base_w = 1920;
var base_h = 1080;
var aspect = base_w / base_h;

var hh = min(base_h, display_get_height());
var ww = hh * aspect;

surface_resize(application_surface, ww * argument[0], hh * argument[0]);
