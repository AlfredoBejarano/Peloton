obj_am_lighting.dark_factor = 0.8; 
if(global.gamemode == gm_campaign) {
    instance_create(3721, 1020, obj_pl01);
} else {    
    if(global.gamemode == gm_siege_mode) {      
		var player = instance_create(2149, 1020, obj_pl01);
		siege_weapon_add(global.hg, player);
		init_player(global.control, player);
        instance_create(0, 0, obj_enemy_generator);
    }
}