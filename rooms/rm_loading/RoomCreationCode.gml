global.locale = os_get_language();
global.gamemode = noone;
global.fx_volume = 1;
global.music_volume = 1;
global.control = true;
if(os_type ==  os_android || os_type == os_ios) {
    set_resolution(0.8);
    global.touch = true;
} else {
    set_resolution(1);
    global.touch = false;
}
global.keybindings = ds_list_create();
ds_list_add(global.keybindings,
    ord("W"),
    ord("A"),
    ord("S"),
    ord("D"),
    mb_right,
    mb_left,
    ord("F"),
    ord("R"),
    ord("Q"),
    vk_space,
    vk_escape   
);
global.pl01gp = ds_list_create();
ds_list_add(global.pl01gp,
    gp_axislv,
    gp_axislh,
    gp_shoulderlb,
    gp_shoulderrb,
    gp_face1,
    gp_padr,
    gp_padl,
    gp_face3,
    gp_face4,
    gp_shoulderr,
    gp_start
);
global.pl02gp = ds_list_create();
ds_list_add(global.pl02gp,
    gp_axislv,
    gp_axislh,
    gp_shoulderlb,
    gp_shoulderrb,
    gp_face2,
    gp_padr,
    gp_padl,
    gp_face1,
    gp_face4,
    gp_shoulderr
);

global.wepnames = create_weapon_names_list();

global.gamemode = gm_siege_mode

// Initialization before menus
if(audio_is_playing(snd_menu)) {
    audio_stop_sound(snd_menu);
}

if(audio_is_playing(snd_menu_extras)) {
    audio_stop_sound(snd_menu_extras);
}


global.hg = obj_wep05
global.mg = obj_wep02
global.sg = obj_wep07
global.rf = obj_wep08

global.kills = 0;

global.pl01_character = 1;
global.pl02_character = 2;

global.pl01wi = ds_list_create();
global.pl02wi = ds_list_create();

global.level_music = ds_list_create();

//instance_create(x,y, obj_music_player);

ds_list_add(global.pl02wi,
    obj_wep06
);

global.upgrade = -1;

global.upgrades = ds_map_create();
/* weapons upgrades */
ds_map_add(global.upgrades, "wep01ma", 8);
ds_map_add(global.upgrades, "wep01fs", 30);
ds_map_add(global.upgrades, "wep01rs", 60);
ds_map_add(global.upgrades, "wep01dmg", 26);

ds_map_add(global.upgrades, "wep02ma", 30);
ds_map_add(global.upgrades, "wep02fs", 10);
ds_map_add(global.upgrades, "wep02rs", 60);
ds_map_add(global.upgrades, "wep02dmg", 13);

ds_map_add(global.upgrades, "wep03ma", 4);
ds_map_add(global.upgrades, "wep03fs", 60);
ds_map_add(global.upgrades, "wep03rs", 180);
ds_map_add(global.upgrades, "wep03dmg", 15);

ds_map_add(global.upgrades, "wep04ma", 5);
ds_map_add(global.upgrades, "wep04fs", 80);
ds_map_add(global.upgrades, "wep04rs", 80);
ds_map_add(global.upgrades, "wep04dmg", 120);

ds_map_add(global.upgrades, "wep05ma", 10);
ds_map_add(global.upgrades, "wep05fs", 35);
ds_map_add(global.upgrades, "wep05rs", 60);
ds_map_add(global.upgrades, "wep05dmg", 40);

ds_map_add(global.upgrades, "wep06ma", 20);
ds_map_add(global.upgrades, "wep06fs", 12);
ds_map_add(global.upgrades, "wep06rs", 60);
ds_map_add(global.upgrades, "wep06dmg", 19);

ds_map_add(global.upgrades, "wep07ma", 4);
ds_map_add(global.upgrades, "wep07fs", 45);
ds_map_add(global.upgrades, "wep07rs", 160);
ds_map_add(global.upgrades, "wep07dmg", 12);

ds_map_add(global.upgrades, "wep08ma", 8);
ds_map_add(global.upgrades, "wep08fs", 60);
ds_map_add(global.upgrades, "wep08rs", 70);
ds_map_add(global.upgrades, "wep08dmg", 125);

ds_map_add(global.upgrades, "wep09ma", 10);
ds_map_add(global.upgrades, "wep09fs", 1);
ds_map_add(global.upgrades, "wep09rs", 120);
ds_map_add(global.upgrades, "wep09dmg", 200);

//ds_list_add(global.pl01wi, obj_wep01, obj_wep05, obj_wep02, obj_wep06, obj_wep03, obj_wep07, obj_wep04, obj_wep08);