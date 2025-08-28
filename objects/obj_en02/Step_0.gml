if(is_chaining) { 
   can_move = 0; 
   can_attack = 0;
   is_attacking = 0;
}
basic_en_IA(7, false, 256);
eye_index = is_taking_damage;
is_hitting = weapon.is_hitting;
if(is_hitting == 1) {
   can_move = 0;
   can_attack = 0;
   is_attacking = 0;
}

if(dying == 1) {
    eye_index = 1;
}

