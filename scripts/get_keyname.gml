///get_keyname(key constant)

switch(argument0) {
    /* Gamepad buttons */
    case gp_face1:      { return 0;} 
    case gp_face2:      { return 1;} 
    case gp_face3:      { return 2;} 
    case gp_face4:      { return 3;} 
    case gp_shoulderr:  { return 4;} 
    case gp_shoulderl:  { return 5;} 
    case gp_select:     { return 6;} 
    case gp_start:      { return 7;} 
    case gp_stickl:     { return 8;} 
    case gp_stickr:     { return 9;} 
    case gp_padu:       { return 10;} 
    case gp_padd:       { return 11;} 
    case gp_padl:       { return 12;} 
    case gp_padr:       { return 13;} 
    case gp_shoulderlb: {return 14;} 
    case gp_shoulderrb: {return 15;}
    
    /* Special keys */ 
    case vk_escape: {return 16;}
    case vk_f1: {return 17;}
    case vk_f2: {return 18;}    
    case vk_f3: {return 19;}
    case vk_f4: {return 20;}
    case vk_f5: {return 21;}
    case vk_f6: {return 22;}    
    case vk_f7: {return 23;}
    case vk_f8: {return 24;}
    case vk_f9: {return 25;}
    case vk_f10: {return 26;}    
    case vk_f11: {return 27;}
    case vk_f12: {return 28;}    
    case vk_printscreen: {return 29;}         
    case vk_pause: {return 30;}
    case vk_pageup: {return 31;}
    case vk_pagedown: {return 32;}
    case vk_insert: {return 33;}
    case vk_home: {return 34;}
    case vk_delete: {return 35;}
    case vk_end: {return 36;}
    case vk_alt: {return 37;}
    case vk_control: {return 38;}
    case vk_tab: {return 39;}
    case vk_shift: {return 40;}
    case vk_enter: {return 41;}
    case vk_backspace: {return 42;}
    case vk_space: {return 43;}
    case vk_up: {return 44;}
    case vk_left: {return 45;}
    case vk_down: {return 46;}
    case vk_right: {return 47;}
 
    /* Ordinary Keys */        
    case ord('1'): {return 59;}
    case ord('2'): {return 60;}
    case ord('3'): {return 61;}   
    case ord('4'): {return 62;}
    case ord('5'): {return 63;}
    case ord('6'): {return 64;}       
    case ord('7'): {return 65;}
    case ord('8'): {return 66;}
    case ord('9'): {return 67;}       
    case ord('0'): {return 68;}           
    case ord('A'): {return 69;}               
    case ord('B'): {return 70;}
    case ord('C'): {return 71;}
    case ord('D'): {return 72;}   
    case ord('E'): {return 73;}
    case ord('F'): {return 74;}
    case ord('G'): {return 75;}       
    case ord('H'): {return 76;}
    case ord('I'): {return 77;}
    case ord('J'): {return 78;}       
    case ord('K'): {return 79;}           
    case ord('L'): {return 80;}
    case ord('M'): {return 81;}
    case ord('N'): {return 82;}   
    case ord('O'): {return 83;}       
    case ord('P'): {return 84;}
    case ord('Q'): {return 85;}
    case ord('R'): {return 86;}       
    case ord('S'): {return 87;}           
    case ord('T'): {return 88;}
    case ord('U'): {return 89;}
    case ord('V'): {return 90;}   
    case ord('W'): {return 91;}
    case ord('X'): {return 92;}
    case ord('Y'): {return 93;}       
    case ord('Z'): {return 94;}    
    
    /* Mouse buttons */
    case mb_left: {return 95;}
    case mb_right: {return 96;}
    case mb_middle: {return 97;}
    
    /* duplicates */
    case vk_numpad1:   { return 59;}
    case vk_numpad2:   { return 60;}
    case vk_numpad3:   { return 61;}
    case vk_numpad4:   { return 62;}
    case vk_numpad5:   { return 63;}            
    case vk_numpad6:   { return 64;}
    case vk_numpad7:   { return 65;}
    case vk_numpad8:   { return 66;}
    case vk_numpad9:   { return 67;}
    case vk_numpad0:   { return 68;}    
    
    default: {return 100;}
}

if(mouse_wheel_up()) {
   return 98;
} else {
   return 99;
}
