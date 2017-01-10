image_index = 0;
image_speed = 0;
target = noone;
is_aiming = 0;
is_shooting = 0;
can_knife = true;
is_switching = 0;
is_reloading = 0;
current_weapon = 0;
character = 2;
being_attacked = 0;
can_move = 1;
can_take_damage = 1;
damage_direction = 0;
is_taking_damage = 0;
can_face = 0;
spd = 4; 
eye_index = 0;
mouth_index = 0;
hp = 100;
weapon = obj_wep06;
abutton = noone;
// Creates the weapon
cweapon = instance_create(x, y, weapon);
weapon_id = cweapon.id;
with (cweapon) {
    shooter = argument0;
}
wep = instance_find(weapon, weapon_id);

sprite_index = ds_list_find_value(player_skin_factory(character), 0);

// Creates hand 1.
hand1 = instance_create(x, y, obj_hand1);
hand1id = hand1.id;
with (hand1) {
    player = argument0;
    player_id = shooter_factory(player);
    sprite_index = ds_list_find_value(player_skin_factory(player.character), 1);
}

// Creates hand 2.
hand2 = instance_create(x, y, obj_hand2);
hand2id = hand2.id;
with (hand2) {
    player = argument0;
    player_id = shooter_factory(player);    
    init_hand2(argument0);
}

// Sets knife sprite for the player
knife_sprite = ds_list_find_value(player_skin_factory(character), 3);

// Sets mouth sprite
mouth_sprite = ds_list_find_value(player_skin_factory(character), 4);
