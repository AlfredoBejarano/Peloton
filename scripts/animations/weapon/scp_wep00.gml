image_xscale = argument0.image_xscale;

xi = 16;
yi = 64;

dx = 20;
dy = -6;

ixs = image_xscale;

y = argument0.y + (yi + (dy * position))
x = argument0.x + ((xi + (dx * position)) * ixs);

if(position < fire_speed / 2) { 
    image_alpha = 0; 
    image_angle = 225 * ixs;
} else { 
    image_alpha = 1; 
    image_angle = 375 * ixs;
}
