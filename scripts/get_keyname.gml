/// get_keyname(key constant)

key = ds_list_create();

switch(argument0) {
    /* Special keys */ 
    case vk_left: return "←";
    case vk_right: return "→";
    case vk_up: return "↑";
    case vk_down: return "↓";    
    case vk_enter: return "ENTER";
    case vk_escape: return "ESC";
    case vk_space: return "SPACE";
    case vk_shift: return "SHIFT";
    case vk_control: return "CTRL";
    case vk_alt: return "ALT";
    case vk_backspace: return "BACKSPACE";
    case vk_tab: return "TAB";
    case vk_home: return "HOME";
    case vk_end: return "END";
    case vk_delete: return "DEL";
    case vk_insert: return "INS";
    case vk_pageup: return "UP";
    case vk_pagedown: return "DOWN";    
    case vk_pause: return "PAUSE";
    case vk_printscreen: return "PRINTSCREEN";
    case vk_f1: return "F1";
    case vk_f2: return "F2";    
    case vk_f3: return "F3";
    case vk_f4: return "F4";
    case vk_f5: return "F5";
    case vk_f6: return "F6";    
    case vk_f7: return "F7";
    case vk_f8: return "F8";
    case vk_f9: return "F9";
    case vk_f10: return "F10";    
    case vk_f11: return "F11";
    case vk_f12: return "F12";            
    case vk_numpad0: return "0";
    case vk_numpad1: return "1";    
    case vk_numpad2: return "2";
    case vk_numpad3: return "3";    
    case vk_numpad4: return "4";
    case vk_numpad5: return "5";    
    case vk_numpad6: return "6";
    case vk_numpad7: return "7";    
    case vk_numpad8: return "8";
    case vk_numpad9: return "9";                    
    case vk_multiply: return "*";
    case vk_divide: return "/";
    case vk_add: return "+";
    case vk_subtract: return "-";
    case vk_decimal: return ".";
    
    /* Ordinary Keys */        
    case ord('1'): return "1";
    case ord('2'): return "2";
    case ord('3'): return "3";   
    case ord('4'): return "4";
    case ord('5'): return "5";
    case ord('6'): return "6";       
    case ord('7'): return "7";
    case ord('8'): return "8";
    case ord('9'): return "9";       
    case ord('0'): return "0";           
    case ord('A'): return "A";               
    case ord('B'): return "B";
    case ord('C'): return "C";
    case ord('D'): return "D";   
    case ord('E'): return "E";
    case ord('F'): return "F";
    case ord('G'): return "G";       
    case ord('H'): return "H";
    case ord('I'): return "I";
    case ord('J'): return "J";       
    case ord('K'): return "K";           
    case ord('L'): return "L";
    case ord('M'): return "M";
    case ord('N'): return "N";   
    case ord('Ñ'): return "Ñ";
    case ord('O'): return "O";       
    case ord('P'): return "P";
    case ord('Q'): return "Q";
    case ord('R'): return "R";       
    case ord('S'): return "S";           
    case ord('T'): return "T";
    case ord('U'): return "U";
    case ord('V'): return "V";   
    case ord('W'): return "W";
    case ord('X'): return "X";
    case ord('Y'): return "Y";       
    case ord('Z'): return "Z";
    
    /* Gamepad buttons */
    case gp_face1:      { return 0; } 
    case gp_face2:      { return 1; } 
    case gp_face3:      { return 2; } 
    case gp_face4:      { return 3; } 
    case gp_shoulderr:  { return 4; } 
    case gp_shoulderl:  { return 5; } 
    case gp_select:     { return 6; } 
    case gp_start:      { return 7; } 
    case gp_stickl:     { return 8; } 
    case gp_stickr:     { return 9; } 
    case gp_padu:       { return 10; } 
    case gp_padd:       { return 11; } 
    case gp_padl:       { return 12; } 
    case gp_padr:       { return 13; } 
    case gp_shoulderlb: { return 14; } 
    case gp_shoulderrb: { return 15; } 
    
    default: return " ";
}

return key;
