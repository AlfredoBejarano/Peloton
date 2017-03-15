///width_as_dp_units(pixels)
// This script converts raw pixels into DP units, useful for Android targeted games.
scale = display_get_dpi_x();

return real(argument[0] * scale + 0.5);

