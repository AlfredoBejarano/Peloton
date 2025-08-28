// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // obj_pl01
global.__objectDepths[1] = -3; // obj_hand1
global.__objectDepths[2] = -4; // obj_hand2
global.__objectDepths[3] = -1200; // obj_wep_hud
global.__objectDepths[4] = 0; // obj_plIA
global.__objectDepths[5] = 0; // obj_player_parent
global.__objectDepths[6] = 0; // obj_en_wep01
global.__objectDepths[7] = -2; // obj_wep00
global.__objectDepths[8] = -2; // obj_wep_hg_parent
global.__objectDepths[9] = -2; // obj_wep_mg_parent
global.__objectDepths[10] = -2; // obj_wep_sg_parent
global.__objectDepths[11] = -2; // obj_wep_rf_parent
global.__objectDepths[12] = 0; // obj_shot
global.__objectDepths[13] = -1; // obj_magazine
global.__objectDepths[14] = -4; // obj_shell
global.__objectDepths[15] = -4; // obj_sgshell
global.__objectDepths[16] = -2; // obj_wep01
global.__objectDepths[17] = -2; // obj_wep05
global.__objectDepths[18] = -2; // obj_wep02
global.__objectDepths[19] = -2; // obj_wep06
global.__objectDepths[20] = -2; // obj_wep03
global.__objectDepths[21] = -2; // obj_wep07
global.__objectDepths[22] = -2; // obj_wep04
global.__objectDepths[23] = -2; // obj_wep08
global.__objectDepths[24] = 0; // obj_barrel
global.__objectDepths[25] = 0; // obj_target_parent
global.__objectDepths[26] = 0; // obj_en01
global.__objectDepths[27] = 0; // obj_en01_arm
global.__objectDepths[28] = 0; // obj_en02
global.__objectDepths[29] = 0; // obj_en02_hand01
global.__objectDepths[30] = 0; // obj_en02_hand02
global.__objectDepths[31] = 0; // obj_enemy_generator
global.__objectDepths[32] = -1200; // obj_muzzle_flash_small
global.__objectDepths[33] = -4; // obj_fx_bullet
global.__objectDepths[34] = 0; // obj_fx_blood
global.__objectDepths[35] = 0; // obj_blood_floor
global.__objectDepths[36] = -1200; // obj_fx_light_round_big
global.__objectDepths[37] = -1200; // obj_fx_light_round_medium
global.__objectDepths[38] = -1200; // obj_fx_light_round_small
global.__objectDepths[39] = -1200; // obj_fx_enemy_spawn
global.__objectDepths[40] = -1201; // obj_fx_heal
global.__objectDepths[41] = -1200; // obj_fx_critical
global.__objectDepths[42] = -1081; // obj_fx_low_health
global.__objectDepths[43] = -1200; // obj_muzzle_flash
global.__objectDepths[44] = 0; // obj_music_player
global.__objectDepths[45] = -1083; // obj_am_lighting
global.__objectDepths[46] = 0; // obj_dp_parent
global.__objectDepths[47] = 0; // obj_dp_heal
global.__objectDepths[48] = 0; // obj_dp_handgun
global.__objectDepths[49] = 0; // obj_dp_machinegun
global.__objectDepths[50] = 0; // obj_dp_shotgun
global.__objectDepths[51] = 0; // obj_dp_rifle
global.__objectDepths[52] = -1200; // obj_item_picker
global.__objectDepths[53] = -1090; // obj_text
global.__objectDepths[54] = -1920; // obj_control_indicator
global.__objectDepths[55] = 0; // obj_loader


global.__objectNames[0] = "obj_pl01";
global.__objectNames[1] = "obj_hand1";
global.__objectNames[2] = "obj_hand2";
global.__objectNames[3] = "obj_wep_hud";
global.__objectNames[4] = "obj_plIA";
global.__objectNames[5] = "obj_player_parent";
global.__objectNames[6] = "obj_en_wep01";
global.__objectNames[7] = "obj_wep00";
global.__objectNames[8] = "obj_wep_hg_parent";
global.__objectNames[9] = "obj_wep_mg_parent";
global.__objectNames[10] = "obj_wep_sg_parent";
global.__objectNames[11] = "obj_wep_rf_parent";
global.__objectNames[12] = "obj_shot";
global.__objectNames[13] = "obj_magazine";
global.__objectNames[14] = "obj_shell";
global.__objectNames[15] = "obj_sgshell";
global.__objectNames[16] = "obj_wep01";
global.__objectNames[17] = "obj_wep05";
global.__objectNames[18] = "obj_wep02";
global.__objectNames[19] = "obj_wep06";
global.__objectNames[20] = "obj_wep03";
global.__objectNames[21] = "obj_wep07";
global.__objectNames[22] = "obj_wep04";
global.__objectNames[23] = "obj_wep08";
global.__objectNames[24] = "obj_barrel";
global.__objectNames[25] = "obj_target_parent";
global.__objectNames[26] = "obj_en01";
global.__objectNames[27] = "obj_en01_arm";
global.__objectNames[28] = "obj_en02";
global.__objectNames[29] = "obj_en02_hand01";
global.__objectNames[30] = "obj_en02_hand02";
global.__objectNames[31] = "obj_enemy_generator";
global.__objectNames[32] = "obj_muzzle_flash_small";
global.__objectNames[33] = "obj_fx_bullet";
global.__objectNames[34] = "obj_fx_blood";
global.__objectNames[35] = "obj_blood_floor";
global.__objectNames[36] = "obj_fx_light_round_big";
global.__objectNames[37] = "obj_fx_light_round_medium";
global.__objectNames[38] = "obj_fx_light_round_small";
global.__objectNames[39] = "obj_fx_enemy_spawn";
global.__objectNames[40] = "obj_fx_heal";
global.__objectNames[41] = "obj_fx_critical";
global.__objectNames[42] = "obj_fx_low_health";
global.__objectNames[43] = "obj_muzzle_flash";
global.__objectNames[44] = "obj_music_player";
global.__objectNames[45] = "obj_am_lighting";
global.__objectNames[46] = "obj_dp_parent";
global.__objectNames[47] = "obj_dp_heal";
global.__objectNames[48] = "obj_dp_handgun";
global.__objectNames[49] = "obj_dp_machinegun";
global.__objectNames[50] = "obj_dp_shotgun";
global.__objectNames[51] = "obj_dp_rifle";
global.__objectNames[52] = "obj_item_picker";
global.__objectNames[53] = "obj_text";
global.__objectNames[54] = "obj_control_indicator";
global.__objectNames[55] = "obj_loader";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for