// calculate distance relative to the player
// argument0 - gun object.
// argument1 - distance.
// argument2 - weapon x laser origin;
// argument3 - weapon y laser origin;
// argument4 - color
draw_self();

ox = argument0.x;
oy = argument0.y;
distance = argument1;
player = argument0.shooter;
ixs = argument0.image_xscale;

x2 = ox + (distance*ixs);

target = collision_line(ox, oy, ox + (distance*ixs), oy, obj_dummy_target, true, true);
    
if(player.is_aiming == 1 && player.is_shooting == 0 && player.is_reloading == 0) {
    if(target != noone) {   
        draw_set_alpha(0.2);
        draw_circle_colour(target.x, y + argument3, 5, argument4, argument4, false);
        //draw_sprite_stretched_ext(spr_laser, 0, ox + (argument2 * ixs), (oy + argument3), distance_to_point(target.x, oy+argument3),4, argument4, 0.2);    
        draw_line_width_colour(ox + (argument2 * image_xscale), (oy + argument3), target.x, (oy + argument3), 4, argument4, argument4);
        draw_set_alpha(1);
    } else {
        draw_set_alpha(0.2);
        draw_line_width_colour(ox + (argument2 * image_xscale), (oy + argument3), x2, (oy + argument3), 4, argument4, argument4);
        //draw_sprite_stretched_ext(spr_laser, 0, ox + (argument2 * ixs), (oy + argument3), x2*image_xscale, 4, argument4, 0.2);    
        draw_set_alpha(1);    
    }
}   
