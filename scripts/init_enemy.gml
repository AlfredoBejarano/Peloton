///init_enemy(arm 1 object, arm2 object, HP, enemy object)
handx = 0;
dying = 0;
cplhps = 0;
hand1y = 0;
hand2y = 0;
max_hp = argument[2];
hp = max_hp;
damage = 20;
can_move = 0;
red_alpha = 1;
can_attack = 1;
target = noone;
is_enemy = true;
inrange = false;
can_get_hit = 1;
image_speed = 0;
can_get_stab = 1;
is_attacking = 0;
death_position = 0;
attack_position = 0;
can_take_damage = 1;
is_taking_damage = 0;
image_index = irandom_range(0, image_number);
hand1 = argument[0];
hand2 = argument[1];
is_hitting = 0;
eye_index = 0;

if(argument[3] == obj_en02) {
   att_sound = snd_en02_attack;
   dam_sound = snd_en02_damage;
   weapon = instance_create(x, y, obj_en_wep01);
   with(weapon) {
      shooter = argument[3];
   }
} else {
   att_sound = snd_en01_attack;
   dam_sound = snd_en01_damage;
   weapon = noone;
}
