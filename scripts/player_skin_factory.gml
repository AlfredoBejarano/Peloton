/**
*** argument0 - Character's number.
*/
skin = ds_list_create();

switch(argument0) {
    case 1:
        ds_list_add(skin, spr_char01, spr_char01_hand01, spr_char01_hand02, spr_wep00_1);
    break;

    case 2:
        ds_list_add(skin, spr_char02, spr_char02_hand01, spr_char02_hand02, spr_wep00_2);
    break;    
    
    default:
        ds_list_add(skin, spr_dummy, spr_dummy_hand1, spr_dummy_hand2, spr_wep00_1);
    break;
}

return skin;
