///draw_target_health(target)
var t = argument[0]
    draw_ring_bar(t.x, t.y - (t.sprite_height * 1.2), 16, 8, t.max_hp, t.max_hp, 0, 360, 1, c_black)
    draw_ring_bar(t.x, t.y - (t.sprite_height * 1.2), 16, 8, t.max_hp, t.hp, 90, 360, -1, c_red)
