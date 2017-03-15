///pixel_as_dp(pixels, type)
// This script converts raw pixels into DP units, useful for Android targeted games.

scale[0] = display_get_dpi_x();
scale[1] = display_get_dpi_y();

return real(argument[0] * scale[argument[1]] + 0.5);

