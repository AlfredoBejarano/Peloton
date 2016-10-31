image_xscale = argument0.image_xscale;

switch(position) {
    case 1:
        image_angle = 315 * image_xscale;
        x = argument0.x + (16 * image_xscale); 
        y = argument0.y + 32;    
    break;
    case 2:
        image_angle = 360 * image_xscale;
        x = argument0.x + (128 * image_xscale); 
        y = argument0.y;    
    break;
    case 3:
        image_angle = 315 * image_xscale;
        x = argument0.x + (16 * image_xscale); 
        y = argument0.y + 32; 
    break;        
    default:
        image_angle = 225 * image_xscale;
        x = argument0.x; 
        y = argument0.y + 64;   
    break;    
}
