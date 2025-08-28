// Returns the background data captured on the screen which can then be drawn later on.

var ret = -1;
var sfc_width = surface_get_width(application_surface);
var sfc_height = surface_get_height(application_surface);

// Create drawing surface
var sfc = surface_create(sfc_width,sfc_height);
surface_set_target(sfc);
// Clear screen;
// Both draw_clear and draw_rectangle will clear your screen BUT
// on some systems, it creates ghostly images, for example, when
// sprites are animated. To prevent those images, both are used.
draw_set_colour_write_enable(false,false,false,true);
draw_clear(c_black);
draw_rectangle_colour(0,0,sfc_width,sfc_height,c_black,c_black,c_black,c_black,false);
draw_set_colour_write_enable(true,true,true,false);
// Capture screen
draw_surface(application_surface,0,0);
ret = background_create_from_surface(sfc,0,0,sfc_width,sfc_height,false,false);
// Finalise drawing process and clear surface from memory
surface_reset_target();
draw_set_colour_write_enable(true,true,true,true);
surface_free(sfc);

return ret;
