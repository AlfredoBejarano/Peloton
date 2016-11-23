// argument0 - Player object
// argument1 - Weapon size (0 for small);

if(argument1 == 0) {
    image_angle = (270 + (5 * position)) * image_xscale;
    x = argument0.x + 16 + (((34 / 5) * (position)) * image_xscale);
    y = argument0.y + (96 - (4 * position));
    alarm[5] = 1;    
} else {
    image_angle = (235 - (32 * position)) * image_xscale;
    x = argument0.x - ((96 + (-9 * position)) * image_xscale);
    y = argument0.y + ((76/6) * position);
    alarm[5] = 1;  
}
