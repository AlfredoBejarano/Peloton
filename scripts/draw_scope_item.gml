// calculate distance relative to the player
// argument0 - gun object.
// argument1 - distance.
// argument2 - weapon x laser origin;
// argument3 - weapon y laser origin;
draw_self();

size = 48;
ox = argument0.x;
oy = argument0.y;
distance = argument1;
player = argument0.shooter;
ixs = argument0.image_xscale;
ww = 1;
hh = 1;

if(sprite_width > sprite_height) { 
    hh = 1;     
    ww = (sprite_width * 1) / sprite_height;
} else { 
    ww = 1;     
    hh = (sprite_height * 1) / sprite_width;
};

target = collision_line(ox, oy, ox + (distance*ixs), oy, obj_target_parent, true, true);
    
if(player.is_aiming == 1 && player.is_shooting == 0 && player.is_reloading == 0) {
    if(target != noone) {   
        draw_sprite_stretched(target.sprite_index, target.image_index, (ox + (argument2 * ixs)) - (size/2), ((oy + argument3)) - (size/2), size, size );
    }
    draw_sprite(spr_wep_scope, 0, ox + (argument2 * ixs), (oy + argument3));
}   
