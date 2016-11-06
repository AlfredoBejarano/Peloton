image_xscale = argument0.image_xscale;

xi = 16;
yi = 64;

dx = 10;
dy = -3;

ixs = image_xscale;

y = argument0.y + (yi + (dy * position))
x = argument0.x + ((xi + (dx * position)) * ixs);

if(position < 6) { 
    image_alpha = 0; 
    image_angle = 225 * ixs;
} else { 
    image_alpha = 1; 
    image_angle = 360 * ixs;
}
