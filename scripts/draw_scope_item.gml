/// draw_scope_item(x, y)
// argument[0] - x delta from gun origin.
// argument[1] - y delta from gun origin.
// Check if the shooter is aiming only.
draw_self();
var size = 48;
if(shooter.is_aiming == 1 && shooter.is_shooting == 0 && shooter.is_reloading == 0) {
    var target = collision_line(x, y, (x + room_width) * image_xscale, y, obj_target_parent, true, true);
    draw_set_alpha(1)
    if(target != noone) {
        draw_sprite_stretched(target.sprite_index, target.image_index, x, y, size * target.sprite_width / target.sprite_height, size * target.sprite_height / target.sprite_width);
    }
    draw_sprite(spr_wep_scope, 0, x, y);
}
