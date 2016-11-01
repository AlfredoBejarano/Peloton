image_xscale = argument0.image_xscale;

switch(position) {
    case 1:
        image_angle = 270 * image_xscale;
        x = argument0.x + (32 * image_xscale); 
        y = argument0.y + 60;    
    break;
    case 2:
        image_angle = 315 * image_xscale;
        x = argument0.x + (48 * image_xscale); 
        y = argument0.y + 56;    
    break;
    case 3:
        image_angle = 360 * image_xscale;
        x = argument0.x + (64 * image_xscale); 
        y = argument0.y + 52; 
    break;  
    case 4:
        image_angle = 360 * image_xscale;
        x = argument0.x + (80 * image_xscale); 
        y = argument0.y + 48;    
    break;
    case 5:
        image_angle = 360 * image_xscale;
        x = argument0.x + (96 * image_xscale); 
        y = argument0.y + 44;    
    break;
    case 6:
        image_angle = 360 * image_xscale;
        x = argument0.x + (112 * image_xscale); 
        y = argument0.y + 40;    
    break;
    case 7:
        image_angle = 360 * image_xscale;
        x = argument0.x + (128 * image_xscale); 
        y = argument0.y + 36;    
    break;          
    default:
        image_angle = 225 * image_xscale;
        x = argument0.x + (16 * image_xscale); 
        y = argument0.y + 64;   
    break;    
}
