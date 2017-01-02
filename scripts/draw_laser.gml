/// draw_laser(gun object, distance, x, y, color, hitscan delta);
// calculate distance relative to the player
// argument0 - gun object.
// argument1 - distance.
// argument2 - weapon x laser origin;
// argument3 - weapon y laser origin;
// argument4 - color
// argument5 - hitscan delta respect to y origin.
draw_self();

ox = argument0.x;
oy = argument0.y;
distance = argument1;
player = argument0.shooter;
ixs = argument0.image_xscale;
delta = argument5; 
x2 = ox + (distance*ixs);

target = collision_line(ox, oy, ox + (distance*ixs), oy-delta, obj_target_parent, true, true);
    
if(player.is_aiming == 1 && player.is_shooting == 0 && player.is_reloading == 0) {
    if(target != noone) {   
        draw_set_alpha(0.8);
        draw_circle_colour(target.x, (y + argument3)-delta, 5, argument4, argument4, false);
        draw_set_alpha(0.2);
        draw_line_width_colour(ox + (argument2 * image_xscale), (oy + argument3), target.x, (oy + argument3)-delta, 4, argument4, argument4);
        draw_set_alpha(1);
    } else {
        draw_set_alpha(0.2);
        draw_line_width_colour(ox + (argument2 * image_xscale), (oy + argument3), x2, (oy + argument3)-delta, 4, argument4, argument4);
        draw_set_alpha(1);    
    }
}   
