// get_keyname(ascii_number)

switch(argument0) {
    /* Special keys */ 
    case vk_left: return "←";
    case vk_right: return "→";
    case vk_up: return "↑";
    case vk_down: return "↓";    
    case vk_enter: return "Enter";
    case vk_escape: return "Esc";
    case vk_space: return "Spacebar";
    case vk_shift: return "Shift";
    case vk_control: return "Ctrl";
    case vk_alt: return "Alt";
    case vk_backspace: return "Backspace";
    case vk_tab: return "Tab";
    case vk_home: return "Home";
    case vk_end: return "End";
    case vk_delete: return "Del";
    case vk_insert: return "Ins";
    case vk_pageup: return "Page Up";
    case vk_pagedown: return "Page Down";    
    case vk_pause: return "Pause";
    case vk_printscreen: return "Printscreen";
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
/*    case ord('Ñ'): return "Ñ";
    case ord('R'): return "R";
    case ord('O'): return "O";       
    case ord('P'): return "P";
    case ord('Q'): return "Q";*/
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
    case gp_face1: return "A";
    case gp_face2: return "B";
    case gp_face3: return "X";
    case gp_face4: return "Y";
    case gp_select: return "select";
    case gp_start: return "start";
    case gp_shoulderr: return "RB";
    case gp_shoulderl: return "LB";
    case gp_shoulderrb: return "RT";
    case gp_shoulderlb: return "LT";
    
    default: return " ";
}
