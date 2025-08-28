draw_self();
draw_rectangle_colour(
    x - (sprite_width/2), 
    y - (sprite_height+64), 
    x - (sprite_width/2) + (sprite_width*(hp/max_hp)),
    y - (sprite_height+64),
    c_red,
    c_red,
    c_red,
    c_red,
    4
);



