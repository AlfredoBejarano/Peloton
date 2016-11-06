image_xscale = argument0.image_xscale;

if(position >= 0 && position < fire_speed) {
        image_angle = 225 * image_xscale;
        x = argument0.x + (16 * image_xscale); 
        y = argument0.y + 64;   
        image_alpha = 0;
} else {
        image_alpha = 1;
        image_angle = 375 * image_xscale;
        x = argument0.x + (160 * image_xscale); 
        y = argument0.y ;  
}

/*if((position >= 0 && position <= 11) || (position >= 24 && position <= 35)) {
        image_angle = 225 * image_xscale;
        x = argument0.x + (16 * image_xscale); 
        y = argument0.y + 64;   
        image_alpha = 0;
} else if(position >= 12 && position <= 23) {
        image_angle = 360 * image_xscale;
        x = argument0.x + (128 * image_xscale); 
        y = argument0.y + 36;  
} else if(position >= 24 && position <= 35) {
    position --;
}*/
