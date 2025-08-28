function init_player(argument0, argument1) {
	with(argument1) {
		image_index = 0;
		image_speed = 0;
		basehp = 200;
		hp = basehp;
		cplhps = 1;
		can_heal = 1;
		is_aiming = 0;
		is_running = 0;
		alarm[4] = 120;
		abutton = noone;
		ybutton = noone;
		is_shooting = 0;
		is_dying = false;
		can_knife = true;
		is_reloading = 0;
		is_switching = 0;
		is_enemy = false;
		being_attacked = 0;
		current_weapon = 0;
		control = argument0;
		wait_for_controls = false;
		control = global.control;
		device = device_factory(self);
		picker = instance_create(0,0,obj_item_picker);
		controls = ds_list_find_value(settings, 0);
		sounds = ds_list_find_value(settings, 4);

		// Damage variables
		can_take_damage = 1;
		damage_direction = 0;
		is_taking_damage = 0;

		// Facial expression variables
		eye_index = 0;
		mouth_index = 0;
	
		// Sets player skin
		sprite_index = ds_list_find_value(player_skin_factory(character), 0);

		// Adds healing items
		ds_list_replace(ammo_inventory, 0, 1);
		heals = ds_list_find_value(ammo_inventory, 0);

		// Creates the weapon
		cweapon = instance_create(x, y, weapon);
		cweapon.shooter = self;
		cweapon.ammo =  ds_list_find_value(weapons_ammo, current_weapon);
		weapon_id = cweapon.id;

		// Sets the current ammo being used.
		current_ammo = ds_list_find_value(ammo_inventory, cweapon.ammo_type);

		// Hands require a weapon to be attached with.

		// Creates hand 1.
		hand1 = instance_create(x, y, obj_hand1);
		var currentPlayer = self;
	
		with(hand1) {
		    player = currentPlayer;
		    sprite_index = ds_list_find_value(player_skin_factory(currentPlayer.character), 1);
		}

		// Creates hand 2.
		hand2 = instance_create(x, y, obj_hand2);
		with(hand2) {
		    init_hand2(currentPlayer);
		}
	
		// Creates the HUD for the player.
		with(instance_create(x,y, hud)) {    
		    image_alpha = 0;
		    player = currentPlayer;
		    xs = (display_get_width()    /   1920);
		    ys = (display_get_height()   /   1080);
		    dwep = player.weapon;
		}

		// Sets knife sprite for the player
		knife_sprite = ds_list_find_value(player_skin_factory(character), 3);

		// Sets mouth sprite
		mouth_sprite = ds_list_find_value(player_skin_factory(character), 4);
	}
}
