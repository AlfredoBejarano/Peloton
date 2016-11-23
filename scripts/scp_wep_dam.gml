// scp_wep_dam(player);

y = argument0.y-52;
if(argument0.damage_direction == 0) {
    image_angle = 365 * image_xscale;
    x = argument0.x + (128 * image_xscale); 
} else {
    image_angle = 260 * image_xscale;
    x = argument0.x - (32 * image_xscale);   
}
