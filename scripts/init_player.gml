// argument0 - If keyboard is in use (true) or not (false).
// argument1 - Player's object.

image_index = 0;
image_speed = 0;

hp = 100;
cplhps = 1;
is_aiming = 0;
is_running = 0;
alarm[4] = 120;
abutton = noone;
is_shooting = 0;
can_knife = true;
is_reloading = 0;
is_switching = 0;
being_attacked = 0;
current_weapon = 0;
control = argument0;
wait_for_controls = false;
picker = instance_create(0,0,obj_item_picker);

// Damage variables
can_take_damage = 1;
damage_direction = 0;
is_taking_damage = 0;

// Facial expression variables
eye_index = 0;
mouth_index = 0;

settings = settings_factory(control, self);

// Initializes inventories.
weapons_ammo = ds_list_create();
ammo_inventory = ds_list_create();

// Retrieve everything we need from the settings.
hud = ds_list_find_value(settings, 2);
character = ds_list_find_value(settings, 3);
weapons_inventory = ds_list_find_value(settings, 1);

// Sets player skin
sprite_index = ds_list_find_value(player_skin_factory(character), 0);

// Set the first weapon in the inventory as the current weapon.
weapon = ds_list_find_value(weapons_inventory, 0);

// DS_List for storing inventory's weapons chamber ammmo
weapons_ammo = init_weapon_ammo(weapons_inventory);

// Sets ammo for the inventory
ammo_inventory = init_inventory_ammo(weapons_inventory);

// Creates the weapon
with (instance_create(x, y, weapon)) {
    shooter = argument1;
}

// Hands require a weapon to be attached with.

// Creates hand 1.
hand1 = instance_create(x, y, obj_hand1);
with (hand1) {
    player = argument1;
    sprite_index = ds_list_find_value(player_skin_factory(player.character), 1);
}

// Creates hand 2.
hand2 = instance_create(x, y, obj_hand2);
with (hand2) {
    player = argument1;
    init_hand2(argument1);
}

// Sets the current ammo being used.
current_ammo = ds_list_find_value(ammo_inventory, weapon.ammo_type);

// Creates the HUD for the player.
instance_create(x,y, hud);

// Sets knife sprite for the player
knife_sprite = ds_list_find_value(player_skin_factory(character), 3);

// Sets mouth sprite
mouth_sprite = ds_list_find_value(player_skin_factory(character), 4);

// Sets health hud
healthhud = instance_create(x,y, obj_plhealth);
with(healthhud) { player = argument1; }
