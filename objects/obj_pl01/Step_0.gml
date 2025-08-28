depth = -y;
switch_controls();
player_controls();

if(x < 0) {
   x = 0;
}

if(x > room_width) {
   x = room_width;
}

if(y > 1750) {
   y = 1750;
}

if(y < 900) {
   y = 900;
}

if(is_dying) {
    eye_index = 2;
    can_take_damage = 0;
}

if(hp <= 0) {
    hp = 0;
}

