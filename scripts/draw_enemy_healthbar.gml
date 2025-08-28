///draw_enemy_healthbar(color)
if(hp/max_hp > 0) {
   draw_rectangle_colour(
      x - (sprite_width/2), 
      y - (sprite_height+64), 
      x - (sprite_width/2) + (sprite_width*(hp/max_hp)),
      y - (sprite_height+80),
      argument[0],
      argument[0],
      argument[0],
      argument[0],
      false
   );
}
