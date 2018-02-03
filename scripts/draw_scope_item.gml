///draw_scope_item(x, y)

draw_self();

size = 48;
ox = x;
oy = y;
distance = room_width;
player = shooter;
ixs = image_xscale;
ww = 1;
hh = 1;

x1 = argument0;
y1 = argument1;

if(sprite_width > sprite_height) { 
    hh = 1;     
    ww = (sprite_width * 1) / sprite_height;
} else { 
    ww = 1;     
    hh = (sprite_height * 1) / sprite_width;
};
target = collision_line(x1, y1, x1 + (distance*ixs), y1, obj_target_parent, true, true);
if(object_index == obj_wep04) { 
    wx = 35; wy = -128; 
} else { 
    wx = 40; wy = -128; 
}

if(player.is_aiming == 1 && player.is_shooting == 0 && player.is_reloading == 0) {
    draw_set_alpha(1);
    if(target != noone) {  
        draw_sprite_stretched(target.sprite_index, target.image_index, (ox + (wx * ixs)) - (size/2), ((oy + wy)) - (size/2), size, size);
    }
    draw_sprite(spr_wep_scope, 0, ox + (wx * ixs), (oy + wy));
}
