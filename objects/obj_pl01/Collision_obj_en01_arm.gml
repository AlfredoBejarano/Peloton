inrange = false;
if(((y <= other.zombie.y + 32) && (y >= other.zombie.y - 32)) || y == other.zombie.y) {
   inrange = true;
}

if(other.zombie.is_attacking == 1 && inrange && can_take_damage == 1 && is_taking_damage == 0) {
    audio_play_sound(snd_en_hit, 0, false);
   take_damage(other.zombie.image_xscale, other.zombie.damage, sounds);
}

