///perform_healing(healing button/key (pressed));
// This script allows the player use bandages to heal himself
if(argument0 && (hp < 100 && heals > 0) && can_heal = 1) {
   instance_create(x, y, obj_fx_heal);
   hp = 100;
   heals --;
   ds_list_replace(ammo_inventory, 0, heals);
   heals = ds_list_find_value(ammo_inventory, 0);
   can_heal = 0;
   alarm[5] = 60;
   eye_index = 0;
   mouth_index = 0;
   audio_play_sound(snd_healing, 0, false);
}