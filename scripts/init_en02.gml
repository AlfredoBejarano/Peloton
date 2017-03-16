///init_en02(en02 object)
hand1 = create_zombie_hand(self, 256, 256, 0, obj_en02_hand01);
hand2 = create_zombie_hand(self, 256, 256, 1, obj_en02_hand02);
init_enemy(hand1, hand2, 100);
can_move = 0;

weapon = instance_create(x, y, obj_en_wep01);
with(weapon) {
   shooter = argument[0];
}
